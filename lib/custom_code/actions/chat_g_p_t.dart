// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http; // Import the http package
import 'dart:async'; // Import the async package
import 'dart:convert'; // Import the convert library from the dart:core library

Future<dynamic> chatGPT(
  String apiKey,
  dynamic messages, // This parameter can take any data type
) async {
  final data = {
    'messages': [
      messages
    ], // An array of messages containing the prompt(s) to generate responses for
    'model': "gpt-3.5-turbo", // The GPT model to use for generating responses
  };

  final headers = {
    'Authorization':
        'Bearer ' + apiKey, // The OpenAI API key for authentication
    'Content-Type':
        'application/json' // The type of data being sent in the request
  };
  final request = http.Request(
    'POST', // The type of request to send
    Uri.parse(
        'https://api.openai.com/v1/chat/completions'), // The API endpoint for generating responses
  );
  request.body = json.encode(data); // Encode the data as a JSON string
  request.headers.addAll(headers); // Add the headers to the request

  final httpResponse = await request.send(); // Send the request

  if (httpResponse.statusCode == 200) {
    // If the response status code is 200
    final jsonResponse = json.decode(await httpResponse.stream
        .bytesToString()); // Decode the response body as a JSON object
    return jsonResponse; // Return the decoded JSON object
  } else {
    // If the response status code is not 200
    print(
        httpResponse.reasonPhrase); // Print the reason for the response failure
    return {}; // Return an empty map
  }
}
