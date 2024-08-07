import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  bool _makePhoto = false;
  bool get makePhoto => _makePhoto;
  set makePhoto(bool value) {
    _makePhoto = value;
  }

  String _fileBase64 = '';
  String get fileBase64 => _fileBase64;
  set fileBase64(String value) {
    _fileBase64 = value;
  }

  DocumentReference? _selectedChannelDetails;
  DocumentReference? get selectedChannelDetails => _selectedChannelDetails;
  set selectedChannelDetails(DocumentReference? value) {
    _selectedChannelDetails = value;
  }

  String _threadID = '';
  String get threadID => _threadID;
  set threadID(String value) {
    _threadID = value;
  }

  String _FeelingsToday = '';
  String get FeelingsToday => _FeelingsToday;
  set FeelingsToday(String value) {
    _FeelingsToday = value;
  }

  String _thoughts = '';
  String get thoughts => _thoughts;
  set thoughts(String value) {
    _thoughts = value;
  }

  String _apiKey = 'sk-None-P8PAWgDoctvfnpKBLkoAT3BlbkFJcwO40u2LKT31MgWcUJEX';
  String get apiKey => _apiKey;
  set apiKey(String value) {
    _apiKey = value;
  }

  String _assistantId = 'asst_G891aoxUyjcTLTFWK51sF6g1';
  String get assistantId => _assistantId;
  set assistantId(String value) {
    _assistantId = value;
  }
}
