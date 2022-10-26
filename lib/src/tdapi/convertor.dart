part of 'index.dart';

TdObject? convertToObject(String? query) {
  if (query != null) {
    final Map<String, dynamic> newJson = json.decode(query);

    if (newJson.containsKey('@type') &&
        allObjects.containsKey(newJson['@type']) &&
        allObjects[newJson['@type']] != null) {
      return allObjects[newJson['@type']]!(newJson);
    }
  }

  return null;
}
