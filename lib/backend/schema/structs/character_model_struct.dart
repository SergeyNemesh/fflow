// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharacterModelStruct extends BaseStruct {
  CharacterModelStruct({
    int? id,
    String? name,
    String? image,
    String? gender,
    bool? isAdd,
  })  : _id = id,
        _name = name,
        _image = image,
        _gender = gender,
        _isAdd = isAdd;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "isAdd" field.
  bool? _isAdd;
  bool get isAdd => _isAdd ?? false;
  set isAdd(bool? val) => _isAdd = val;
  bool hasIsAdd() => _isAdd != null;

  static CharacterModelStruct fromMap(Map<String, dynamic> data) =>
      CharacterModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        image: data['image'] as String?,
        gender: data['gender'] as String?,
        isAdd: data['isAdd'] as bool?,
      );

  static CharacterModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CharacterModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'image': _image,
        'gender': _gender,
        'isAdd': _isAdd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'isAdd': serializeParam(
          _isAdd,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CharacterModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      CharacterModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        isAdd: deserializeParam(
          data['isAdd'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CharacterModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CharacterModelStruct &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        gender == other.gender &&
        isAdd == other.isAdd;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, image, gender, isAdd]);
}

CharacterModelStruct createCharacterModelStruct({
  int? id,
  String? name,
  String? image,
  String? gender,
  bool? isAdd,
}) =>
    CharacterModelStruct(
      id: id,
      name: name,
      image: image,
      gender: gender,
      isAdd: isAdd,
    );
