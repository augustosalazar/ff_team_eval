import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  String _authUserId = '';
  String get authUserId => _authUserId;
  set authUserId(String value) {
    _authUserId = value;
  }

  List<StudentListResponseStruct> _fullStudentList = [];
  List<StudentListResponseStruct> get fullStudentList => _fullStudentList;
  set fullStudentList(List<StudentListResponseStruct> value) {
    _fullStudentList = value;
  }

  void addToFullStudentList(StudentListResponseStruct value) {
    fullStudentList.add(value);
  }

  void removeFromFullStudentList(StudentListResponseStruct value) {
    fullStudentList.remove(value);
  }

  void removeAtIndexFromFullStudentList(int index) {
    fullStudentList.removeAt(index);
  }

  void updateFullStudentListAtIndex(
    int index,
    StudentListResponseStruct Function(StudentListResponseStruct) updateFn,
  ) {
    fullStudentList[index] = updateFn(_fullStudentList[index]);
  }

  void insertAtIndexInFullStudentList(
      int index, StudentListResponseStruct value) {
    fullStudentList.insert(index, value);
  }

  List<GroupStruct> _groups = [];
  List<GroupStruct> get groups => _groups;
  set groups(List<GroupStruct> value) {
    _groups = value;
  }

  void addToGroups(GroupStruct value) {
    groups.add(value);
  }

  void removeFromGroups(GroupStruct value) {
    groups.remove(value);
  }

  void removeAtIndexFromGroups(int index) {
    groups.removeAt(index);
  }

  void updateGroupsAtIndex(
    int index,
    GroupStruct Function(GroupStruct) updateFn,
  ) {
    groups[index] = updateFn(_groups[index]);
  }

  void insertAtIndexInGroups(int index, GroupStruct value) {
    groups.insert(index, value);
  }

  int _myGroupNumber = 0;
  int get myGroupNumber => _myGroupNumber;
  set myGroupNumber(int value) {
    _myGroupNumber = value;
  }
}
