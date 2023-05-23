import 'dart:convert';
import 'json_model.dart';

List<AndroidVerison> parseJsonData(String jsonData) {
  List<dynamic> data = json.decode(jsonData);

  List<AndroidVerison> myDataList = [];

  for (var item in data) {
    if (item is Map<String, dynamic>) {
      int startingKey = int.parse(item.keys.first);
      int lastKey = int.parse(item.keys.last);

      for (int key = startingKey; key <= lastKey; key++) {
        if (item.containsKey(key.toString())) {
          myDataList.add(AndroidVerison.fromJson(item[key.toString()]));
        } else {
          myDataList.add(AndroidVerison(id: -1, title: ''));
        }
      }
    } else if (item is List<dynamic>) {
      for (var element in item) {
        myDataList.add(AndroidVerison.fromJson(element));
      }
    }
  }

  return myDataList;
}
