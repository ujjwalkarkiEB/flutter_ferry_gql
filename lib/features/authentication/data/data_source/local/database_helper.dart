import 'dart:io';

import 'package:auhentication_gql/core/utils/constants/string_constants.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class DatabaseHelper {
  Future<void> initializeLocalDatabase() async {
    final Directory databaseDir = await getApplicationDocumentsDirectory();
    Hive.init(databaseDir.path);
    await Hive.openBox<String>(StringConstants.boxName);
  }

  Box<String> get authBox => Hive.box(StringConstants.boxName);
}
