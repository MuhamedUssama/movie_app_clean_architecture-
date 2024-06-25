import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:movie_app/movie_app.dart';

import 'core/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  configureDependencies();
  final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentsDir.path);
  runApp(const MovieApp());
}
