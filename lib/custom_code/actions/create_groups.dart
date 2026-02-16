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

// take the list of students and form groups, each of the number of students that we have from the parameter, return a list of Group
import 'dart:math';

Future<List<GroupStruct>> createGroups(
  List<StudentListResponseStruct>? studentList,
  int? numberOfStudentPerGroup,
) async {
  // Handle null or empty inputs
  if (studentList == null ||
      studentList.isEmpty ||
      numberOfStudentPerGroup == null ||
      numberOfStudentPerGroup <= 0) {
    return <GroupStruct>[];
  }

  // Create a shuffled copy of the student list to randomize group formation
  List<StudentListResponseStruct> shuffledStudents = List.from(studentList);
  shuffledStudents.shuffle(Random());

  List<GroupStruct> groups = <GroupStruct>[];
  int groupIndex = 1;

  // Create groups by taking chunks of students
  for (int i = 0; i < shuffledStudents.length; i += numberOfStudentPerGroup) {
    // Get the students for this group
    List<StudentListResponseStruct> groupStudents =
        shuffledStudents.skip(i).take(numberOfStudentPerGroup).toList();

    // Create a new group with the students
    GroupStruct group = GroupStruct(
      groupId: groupIndex,
      students: groupStudents,
    );

    groups.add(group);
    groupIndex++;
  }

  return groups;
}
