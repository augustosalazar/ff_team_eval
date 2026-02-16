// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupStruct extends BaseStruct {
  GroupStruct({
    int? groupId,
    List<StudentListResponseStruct>? students,
  })  : _groupId = groupId,
        _students = students;

  // "groupId" field.
  int? _groupId;
  int get groupId => _groupId ?? 0;
  set groupId(int? val) => _groupId = val;

  void incrementGroupId(int amount) => groupId = groupId + amount;

  bool hasGroupId() => _groupId != null;

  // "students" field.
  List<StudentListResponseStruct>? _students;
  List<StudentListResponseStruct> get students => _students ?? const [];
  set students(List<StudentListResponseStruct>? val) => _students = val;

  void updateStudents(Function(List<StudentListResponseStruct>) updateFn) {
    updateFn(_students ??= []);
  }

  bool hasStudents() => _students != null;

  static GroupStruct fromMap(Map<String, dynamic> data) => GroupStruct(
        groupId: castToType<int>(data['groupId']),
        students: getStructList(
          data['students'],
          StudentListResponseStruct.fromMap,
        ),
      );

  static GroupStruct? maybeFromMap(dynamic data) =>
      data is Map ? GroupStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'groupId': _groupId,
        'students': _students?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'groupId': serializeParam(
          _groupId,
          ParamType.int,
        ),
        'students': serializeParam(
          _students,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static GroupStruct fromSerializableMap(Map<String, dynamic> data) =>
      GroupStruct(
        groupId: deserializeParam(
          data['groupId'],
          ParamType.int,
          false,
        ),
        students: deserializeStructParam<StudentListResponseStruct>(
          data['students'],
          ParamType.DataStruct,
          true,
          structBuilder: StudentListResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GroupStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GroupStruct &&
        groupId == other.groupId &&
        listEquality.equals(students, other.students);
  }

  @override
  int get hashCode => const ListEquality().hash([groupId, students]);
}

GroupStruct createGroupStruct({
  int? groupId,
}) =>
    GroupStruct(
      groupId: groupId,
    );
