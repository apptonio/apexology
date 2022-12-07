// ignore_for_file: constant_identifier_names

import 'package:enum_to_string/enum_to_string.dart';

enum RequestStatus { LOADING, SUCCESS, ERROR }

extension RequestStatusScheduleTypeExt on RequestStatus {
  String get label {
    return EnumToString.convertToString(this);
  }
}