// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharacterModelStruct extends BaseStruct {
  CharacterModelStruct({
    String? id,
    String? name,
    String? image,
  })  : _id = id,
        _name = name,
        _image = image;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
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

  static CharacterModelStruct fromMap(Map<String, dynamic> data) =>
      CharacterModelStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        image: data['image'] as String?,
      );

  static CharacterModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CharacterModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static CharacterModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      CharacterModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
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
      );

  @override
  String toString() => 'CharacterModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CharacterModelStruct &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, image]);
}

CharacterModelStruct createCharacterModelStruct({
  String? id,
  String? name,
  String? image,
}) =>
    CharacterModelStruct(
      id: id,
      name: name,
      image: image,
    );
