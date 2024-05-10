import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/movie_app.dart';

import 'core/di/di.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  configureDependencies();
  runApp(const MovieApp());
}
