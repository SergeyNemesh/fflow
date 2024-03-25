import 'package:flutter/material.dart';

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

  List<String> _characterNames = ['Hi'];
  List<String> get characterNames => _characterNames;
  set characterNames(List<String> value) {
    _characterNames = value;
  }

  void addToCharacterNames(String value) {
    _characterNames.add(value);
  }

  void removeFromCharacterNames(String value) {
    _characterNames.remove(value);
  }

  void removeAtIndexFromCharacterNames(int index) {
    _characterNames.removeAt(index);
  }

  void updateCharacterNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _characterNames[index] = updateFn(_characterNames[index]);
  }

  void insertAtIndexInCharacterNames(int index, String value) {
    _characterNames.insert(index, value);
  }
}
