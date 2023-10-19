import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stylistuser/backend/backend.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'backend/schema/style_list_record.dart';



class TimeSlot extends StatefulWidget {
  final StyleListRecord stylist;
  const TimeSlot({Key key, this.stylist}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TimeSlotState createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  List<Meeting> meetings = <Meeting>[];
  StreamSubscription s;
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void dispose(){
    s.cancel();
    super.dispose();
  }

  getData() {
   s=  FirebaseFirestore.instance.collection('booking')
         .where('sId',isEqualTo: widget.stylist.uid)
         .where('slot',isGreaterThanOrEqualTo: Timestamp.now())
         .snapshots().listen((bookings) {
       meetings = <Meeting>[];
           for(DocumentSnapshot doc in bookings.docs){
             Timestamp start =doc.get('slot');
              DateTime startTime =start.toDate();
             int duration=doc.get('duration');
             final DateTime endTime = startTime.add( Duration(hours: duration));
             meetings.add(Meeting(
                 'Booked', startTime, endTime, const Color(0xFF0F8644), false));
           }
          print(meetings.length);
           if(mounted){
             setState(() {

             });
           }

     });

    return meetings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SfCalendar(
          view: CalendarView.workWeek,
          dataSource: MeetingDataSource(meetings),
          timeSlotViewSettings: TimeSlotViewSettings(
            // startHour:()widget.stylist.startTime.toDouble() ,
            // endHour:widget.stylist.endTime.toDouble() ,
            timeInterval: Duration(hours: widget.stylist.duration)
          ),
          // by default the month appointment display mode set as Indicator, we can
          // change the display mode as appointment using the appointment display
          // mode property
          scheduleViewSettings: ScheduleViewSettings(),
          monthViewSettings: const MonthViewSettings(
              numberOfWeeksInView: 1,
              appointmentDisplayMode: MonthAppointmentDisplayMode.indicator),
          onTap: (value){
            if(value.appointments==null) {
              if (Timestamp.fromDate(value.date).seconds<Timestamp.fromDate(DateTime.now()).seconds) {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text("Time Slot Passed"),
                  );
                });
              } else if (value.date.hour > widget.stylist.endTime) {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text("Sorry!!Bookings Only till ${widget.stylist.endTime}"),
                  );
                });
              }else if (value.date.hour < widget.stylist.startTime) {
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    title: Text("Sorry!! Start only At ${widget.stylist.startTime}"),
                  );
                });
              }
              else {
            Navigator.pop(context,value);
              }
            }
            else{
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text("Sorry!! Already booked.please choose another slot"),
                );
              });
            }

          },
        ));
  }

//   List<Meeting> _getDataSource() {
//     final List<Meeting> meetings = <Meeting>[];
//     final DateTime today = DateTime.now();
//     final DateTime startTime =
//     DateTime(today.year, today.month, today.day, 9, 0, 0);
//     final DateTime endTime = startTime.add(const Duration(hours: 1));
// //startTime
//     meetings.add(Meeting(
//         'Booked', startTime, endTime, const Color(0xFF0F8644), false));
//     return meetings;
//   }
}

/// An object to set the appointment collection data source to calendar, which
/// used to map the custom appointment data to the calendar appointment, and
/// allows to add, remove or reset the appointment collection.
class MeetingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments[index];
      Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}
class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}