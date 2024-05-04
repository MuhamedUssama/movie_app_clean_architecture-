import 'package:flutter/material.dart';
import 'package:movie_app/movie_app.dart';

import 'core/di/di.dart';

void main() {
  configureDependencies();
  runApp(const MovieApp());
}
