import 'package:hive_flutter/hive_flutter.dart';

import '../models/test_model.dart';

String boxName = 'mybox';
List<TestModel> modelsList = [];

Future<void> initHive() async {
  await Hive.initFlutter();
  await Hive.deleteBoxFromDisk(boxName);
  Hive.registerAdapter(TestModelAdapter());
}

Future<void> getModels() async {
  final box = await Hive.openBox(boxName);
  List data = box.get('modelsList') ?? [];
  modelsList = data.cast<TestModel>();
}

Future<void> updateModels() async {
  final box = await Hive.openBox(boxName);
  box.put('modelsList', modelsList);
  modelsList = await box.get('modelsList');
}
