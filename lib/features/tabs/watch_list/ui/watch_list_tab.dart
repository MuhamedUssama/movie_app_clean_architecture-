import 'package:flutter/material.dart';

import '../../../movie_details/data/data_sources/local/cache_movie_details.dart';
import '../../../movie_details/domain/models/movie_details/movie_details.dart';

class WatchListTab extends StatefulWidget {
  const WatchListTab({super.key});

  @override
  State<WatchListTab> createState() => _WatchListTabState();
}

class _WatchListTabState extends State<WatchListTab> {
  late Future<List<MovieDetails>> _moviesFuture;

  @override
  void initState() {
    super.initState();
    _moviesFuture = CacheMovieDetails.getMovieDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Movies'),
      ),
      body: FutureBuilder<List<MovieDetails>>(
        future: _moviesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No movies saved.'));
          } else {
            var movies = snapshot.data!;
            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                var movie = movies[index];
                return ListTile(
                  title: Text(movie.title ?? 'No title'),
                  subtitle: Text(movie.overview ?? 'No overview'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
