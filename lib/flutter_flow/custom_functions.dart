import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String functionConverStringToImagePath(String imageString) {
  // need functions which get string and convert it in image path
  return imageString;
}

Color functionSetColorByGender(String gender) {
  if (gender == 'Male') {
    return Colors.pink;
  }
  return Colors.blue;
}
