// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentListResponseStruct extends BaseStruct {
  StudentListResponseStruct({
    String? authUserId,
    String? name,
    int? overAllRating,
    int? communicationRating,
    int? collaborationRating,
  })  : _authUserId = authUserId,
        _name = name,
        _overAllRating = overAllRating,
        _communicationRating = communicationRating,
        _collaborationRating = collaborationRating;

  // "authUserId" field.
  String? _authUserId;
  String get authUserId => _authUserId ?? '';
  set authUserId(String? val) => _authUserId = val;

  bool hasAuthUserId() => _authUserId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "overAllRating" field.
  int? _overAllRating;
  int get overAllRating => _overAllRating ?? 0;
  set overAllRating(int? val) => _overAllRating = val;

  void incrementOverAllRating(int amount) =>
      overAllRating = overAllRating + amount;

  bool hasOverAllRating() => _overAllRating != null;

  // "communicationRating" field.
  int? _communicationRating;
  int get communicationRating => _communicationRating ?? 0;
  set communicationRating(int? val) => _communicationRating = val;

  void incrementCommunicationRating(int amount) =>
      communicationRating = communicationRating + amount;

  bool hasCommunicationRating() => _communicationRating != null;

  // "collaborationRating" field.
  int? _collaborationRating;
  int get collaborationRating => _collaborationRating ?? 0;
  set collaborationRating(int? val) => _collaborationRating = val;

  void incrementCollaborationRating(int amount) =>
      collaborationRating = collaborationRating + amount;

  bool hasCollaborationRating() => _collaborationRating != null;

  static StudentListResponseStruct fromMap(Map<String, dynamic> data) =>
      StudentListResponseStruct(
        authUserId: data['authUserId'] as String?,
        name: data['name'] as String?,
        overAllRating: castToType<int>(data['overAllRating']),
        communicationRating: castToType<int>(data['communicationRating']),
        collaborationRating: castToType<int>(data['collaborationRating']),
      );

  static StudentListResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? StudentListResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'authUserId': _authUserId,
        'name': _name,
        'overAllRating': _overAllRating,
        'communicationRating': _communicationRating,
        'collaborationRating': _collaborationRating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'authUserId': serializeParam(
          _authUserId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'overAllRating': serializeParam(
          _overAllRating,
          ParamType.int,
        ),
        'communicationRating': serializeParam(
          _communicationRating,
          ParamType.int,
        ),
        'collaborationRating': serializeParam(
          _collaborationRating,
          ParamType.int,
        ),
      }.withoutNulls;

  static StudentListResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StudentListResponseStruct(
        authUserId: deserializeParam(
          data['authUserId'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        overAllRating: deserializeParam(
          data['overAllRating'],
          ParamType.int,
          false,
        ),
        communicationRating: deserializeParam(
          data['communicationRating'],
          ParamType.int,
          false,
        ),
        collaborationRating: deserializeParam(
          data['collaborationRating'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'StudentListResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StudentListResponseStruct &&
        authUserId == other.authUserId &&
        name == other.name &&
        overAllRating == other.overAllRating &&
        communicationRating == other.communicationRating &&
        collaborationRating == other.collaborationRating;
  }

  @override
  int get hashCode => const ListEquality().hash([
        authUserId,
        name,
        overAllRating,
        communicationRating,
        collaborationRating
      ]);
}

StudentListResponseStruct createStudentListResponseStruct({
  String? authUserId,
  String? name,
  int? overAllRating,
  int? communicationRating,
  int? collaborationRating,
}) =>
    StudentListResponseStruct(
      authUserId: authUserId,
      name: name,
      overAllRating: overAllRating,
      communicationRating: communicationRating,
      collaborationRating: collaborationRating,
    );
