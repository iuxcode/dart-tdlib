part of 'main.dart';

TdObject? convertToObject(String? query) {
  if (query != null) {
    final newJson = json.decode(query);

    return (allObjects.containsKey(newJson['@type']) && allObjects[newJson['@type']] != null) ? allObjects[newJson['@type']]!(newJson) : null;
  } else {
    return null;
  }
}
