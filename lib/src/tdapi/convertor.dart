part of 'tdapi.dart';

TdObject? convertToObject(String? query) {
  if (query != null) {
    final newJson = json.decode(query);
    return allObjects[newJson['@type']]!(newJson);
  } else {
    return null;
  }
}
