import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginApliCallCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginApliCall',
      apiUrl:
          'https://roble-api.openlab.uninorte.edu.co/auth/contract_flutterdemo_ebabe79ab0/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic jwt(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static String? accessToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
  static String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? refreshToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.refreshToken''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
}

class SignUpApliCallCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
   "name":"${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignUpApliCall',
      apiUrl:
          'https://roble-api.openlab.uninorte.edu.co/auth/contract_flutterdemo_ebabe79ab0/signup-direct',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic jwt(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static String? accessToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
  static String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? refreshToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.refreshToken''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
}

class AddStudentCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? authUserId = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "tableName": "GE_Students",
  "records": [
    {
      "authUserId": "${escapeStringForJson(authUserId)}",
      "name": "${escapeStringForJson(name)}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddStudent',
      apiUrl:
          'https://roble-api.openlab.uninorte.edu.co/database/contract_flutterdemo_ebabe79ab0/insert',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? studentId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.inserted[:]._id''',
      ));
}

class AddTeamSetupCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? timeStamp = '',
    dynamic teamStructureJson,
  }) async {
    final teamStructure = _serializeJson(teamStructureJson);
    final ffApiRequestBody = '''
{
  "tableName": "GE_TeamSetup",
  "records": [
    {
      "teamStructure": ${teamStructure}
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddTeamSetup',
      apiUrl:
          'https://roble-api.openlab.uninorte.edu.co/database/contract_flutterdemo_ebabe79ab0/insert',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? groupSetupId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.inserted[:]._id''',
      ));
}

class GerStudentByAuthUserIdCall {
  static Future<ApiCallResponse> call({
    String? tableName = '',
    String? token = '',
    String? authUserId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GerStudentByAuthUserId',
      apiUrl:
          'https://roble-api.openlab.uninorte.edu.co/database/contract_flutterdemo_ebabe79ab0/read',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'tableName': tableName,
        'authUserId': authUserId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jsonResmpose(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static String? studentId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:]._id''',
      ));
}

class GetAllStudentsCall {
  static Future<ApiCallResponse> call({
    String? tableName = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllStudents',
      apiUrl:
          'https://roble-api.openlab.uninorte.edu.co/database/contract_flutterdemo_ebabe79ab0/read',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'tableName': "GE_Students",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? jsonResmpose(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static String? studentId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:]._id''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
