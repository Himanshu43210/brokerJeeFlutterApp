import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late CalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: FlutterFlowCalendar(
        color: FlutterFlowTheme.of(context).primary,
        iconColor: FlutterFlowTheme.of(context).secondaryText,
        weekFormat: false,
        weekStartsMonday: false,
        twoRowHeader: true,
        rowHeight: 70.0,
        onChange: (DateTimeRange? newSelectedDate) {
          setState(() => _model.calendarSelectedDay = newSelectedDate);
        },
        titleStyle: FlutterFlowTheme.of(context).headlineLarge.override(
              fontFamily: 'Outfit',
              color: FlutterFlowTheme.of(context).primary,
              letterSpacing: 0.0,
            ),
        dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).tertiary,
              fontSize: 20.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
              lineHeight: 1.0,
            ),
        dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              fontSize: 16.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
            ),
        selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).alternate,
              fontSize: 16.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
