import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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

  List<CharacterModelStruct> _charactersInState = [
    CharacterModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"idTest\",\"name\":\"nameTest\",\"image\":\"imageTest\"}'))
  ];
  List<CharacterModelStruct> get charactersInState => _charactersInState;
  set charactersInState(List<CharacterModelStruct> value) {
    _charactersInState = value;
  }

  void addToCharactersInState(CharacterModelStruct value) {
    _charactersInState.add(value);
  }

  void removeFromCharactersInState(CharacterModelStruct value) {
    _charactersInState.remove(value);
  }

  void removeAtIndexFromCharactersInState(int index) {
    _charactersInState.removeAt(index);
  }

  void updateCharactersInStateAtIndex(
    int index,
    CharacterModelStruct Function(CharacterModelStruct) updateFn,
  ) {
    _charactersInState[index] = updateFn(_charactersInState[index]);
  }

  void insertAtIndexInCharactersInState(
      int index, CharacterModelStruct value) {
    _charactersInState.insert(index, value);
  }
}
