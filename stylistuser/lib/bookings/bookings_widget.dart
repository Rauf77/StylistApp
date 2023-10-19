import 'package:stylistuser/flutter_flow/chat/index.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';
import '../timeslot_booking.dart';

class BookingsWidget extends StatefulWidget {
 final StyleListRecord stylist;
  const BookingsWidget({Key key, this.stylist}) : super(key: key);

  @override
  _BookingsWidgetState createState() => _BookingsWidgetState();
}

class _BookingsWidgetState extends State<BookingsWidget> {
  DateTime dropDownValue;
  int duration;
  String radioButtonValue='Onsite';
  TextEditingController place;

  CalendarTapDetails booking;
  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    // TODO: implement initState
    duration=widget.stylist.duration;
    super.initState();
    radioButtonValue="Onshop";
    place=TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xD9F1244B),
        automaticallyImplyLeading: true,
        title: Text(
          'Booking',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Book Now',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowRadioButton(

                  options: ['Onsite', 'Onshop','Guidance'],
                  onChanged: (value) {
                    setState(() => radioButtonValue = value);
                  },
                  optionHeight: 25,
                  textStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.horizontal,
                  radioButtonColor: Color(0xFFE70049),
                  inactiveRadioButtonColor: Color(0x8A000000),
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ],
            ),

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: TextFormField(
                controller: place,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Place',
                  labelStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  hintText: 'Please Enter Place',
                  hintStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFE70049),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFE70049),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Time',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                      onPressed: () async {
                    booking=     await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TimeSlot(
                              stylist:widget.stylist,

                            ),
                          ),
                        );
                    if(booking!=null){
                      dropDownValue=booking.date;
                    }

                   setState(() {

                   });

                  }, child: Text(dropDownValue==null?"choose a slot":dropDownValue.toString().substring(0,16))
                  )

                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      if(radioButtonValue!=''&&dropDownValue!=null){
                        print(duration);
                        final bookingCreateData = createBookingRecordData(
                          uid: currentUserUid,
                          uname: currentUserDisplayName,
                          stylistName: widget.stylist.displayName,
                          time: getCurrentTimestamp,
                          sId: widget.stylist.uid,
                          status: 0,
                          photoUrl: currentUserPhoto,
                          location: place.text,
                          slot: dropDownValue,
                          type: radioButtonValue,
                          duration: duration
                        );
                        await BookingRecord.collection
                            .doc()
                            .set(bookingCreateData);
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>NavBarPage(initialPage: 'HomePage',)), (route) => false);

                      }
                      else{
                        showUploadMessage(context, "Choose A slot");
                      }
                },
                    text: 'Book Now',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xD9F1244B),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
