import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String movieId;
  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Movie Details Screen'),
      ),
    );
  }
}
