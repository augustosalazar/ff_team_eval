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
import '/auth/custom_auth/auth_util.dart';

dynamic groupsToJson(List<GroupStruct> groupsList) {
  // get a list of GroupStruct and return it on JSON format
  List<Map<String, dynamic>> jsonList = groupsList.map((group) {
    return {
      'groupId': group.groupId,
      'students': group.students.map((student) {
        return {
          'authUserId': student.authUserId,
          'name': student.name,
        };
      }).toList(),
    };
  }).toList();

  return jsonEncode(jsonList);
}

int getCurrentGroupId(
  List<GroupStruct> groupList,
  String studentId,
) {
// search the list of GroupStruct called groupList that comes as parameter for a student with the id that comes in the parameter studentId, return the groupId as integer
  int index = 0;
  for (var group in groupList) {
    for (var student in group.students) {
      if (student.authUserId == studentId) {
        return index;
      }
    }
    index++;
  }
  return index; // Return 0 if not found
}
