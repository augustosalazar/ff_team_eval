// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// receive a list of the data structure Group and return it after setting values between 1 and 5 on the ratings of each student
import 'dart:math';

Future<List<GroupStruct>> randomEvaluations(List<GroupStruct> groupList) async {
  final random = Random();

  for (final group in groupList) {
    for (final student in group.students) {
      student.overAllRating = random.nextInt(5) + 1;
      student.communicationRating = random.nextInt(5) + 1;
      student.collaborationRating = random.nextInt(5) + 1;
    }
  }

  return groupList;
}
