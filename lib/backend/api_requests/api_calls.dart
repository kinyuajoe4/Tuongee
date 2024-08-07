import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
    'OpenAI-Beta': 'assistants=v1',
  };
  static ThreadsCall threadsCall = ThreadsCall();
  static MessageCall messageCall = MessageCall();
  static RunCall runCall = RunCall();
  static RetrieverunCall retrieverunCall = RetrieverunCall();
  static MessagesCall messagesCall = MessagesCall();
}

class ThreadsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'threads',
      apiUrl: '$baseUrl/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic threadId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class MessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? content = '',
    String? token = '',
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "role": "user",
  "content": "$content"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'message',
      apiUrl: '$baseUrl/threads/$threadId/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'OpenAI-Beta': 'assistants=v1',
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
}

class RunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? assistantId = '',
    String? token = '',
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "assistant_id": "$assistantId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'run',
      apiUrl: '$baseUrl/threads/$threadId/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
        'OpenAI-Beta': 'assistants=v1',
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

  dynamic runId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class RetrieverunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? token = '',
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'retrieverun',
      apiUrl: '$baseUrl/threads/$threadId/runs/$runId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class MessagesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? token = '',
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'messages',
      apiUrl: '$baseUrl/threads/$threadId/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'OpenAI-Beta': 'assistants=v1',
      },
      params: {
        'limit': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data[0].content[0]''',
      );
}

/// End OpenAI ChatGPT Group Code

class OpenAimodelCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'OpenAimodel',
      apiUrl: 'https://api.openai.com/v1/models',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TextcompletionCall {
  static Future<ApiCallResponse> call({
    String? model = 'text-davinci-003',
    String? prompt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "$model",
  "prompt": "$prompt"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'textcompletion',
      apiUrl: 'https://api.openai.com/v1/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
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

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic createdat(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
  static dynamic text(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].text''',
      );
  static dynamic finishreason(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].finish_reason''',
      );
}

class TexteditCall {
  static Future<ApiCallResponse> call({
    String? model = 'text-davinci-003',
    String? input = '',
    String? instruction = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "$model",
  "input": "$input",
"instruction": "$instruction"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'textedit',
      apiUrl: 'https://api.openai.com/v1/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
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

  static dynamic createdat(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
  static dynamic text(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].text''',
      );
}

class ImagegenerationCall {
  static Future<ApiCallResponse> call({
    String? prompt = '',
  }) async {
    final ffApiRequestBody = '''
{
  
  "prompt": "$prompt"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'imagegeneration',
      apiUrl: 'https://api.openai.com/v1/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
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

  static dynamic imageurl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].url''',
      );
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
  if (item is DocumentReference) {
    return item.path;
  }
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
