import 'package:hive/hive.dart';
import '../../features/movie_details/domain/models/movie_details/movie_details.dart';

class MovieTypeAdapter extends TypeAdapter<MovieDetails> {
  @override
  MovieDetails read(BinaryReader reader) {
    return MovieDetails(
      id: reader.readInt(),
      title: reader.readString(),
      adult: reader.readBool(),
      backdropPath: reader.readString(),
      homepage: reader.readString(),
      budget: reader.readInt(),
      imdbId: reader.readString(),
      originCountry: reader.readStringList(),
      originalLanguage: reader.readString(),
      originalTitle: reader.readString(),
      overview: reader.readString(),
      popularity: reader.readDouble(),
      posterPath: reader.readString(),
      releaseDate: reader.readString(),
      revenue: reader.readInt(),
      runtime: reader.readInt(),
      status: reader.readString(),
      statusCode: reader.readInt(),
      statusMessage: reader.readString(),
      success: reader.readBool(),
      tagline: reader.readString(),
      video: reader.readBool(),
      voteAverage: reader.readDouble(),
      voteCount: reader.readInt(),
      genres: reader.readList().cast<Genres>(),
      productionCompanies: reader.readList().cast<ProductionCompanies>(),
      productionCountries: reader.readList().cast<ProductionCountries>(),
      spokenLanguages: reader.readList().cast<SpokenLanguages>(),
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, MovieDetails obj) {
    writer.writeInt(obj.id!);
    writer.writeString(obj.title ?? "");
    writer.writeBool(obj.adult ?? false);
    writer.writeString(obj.backdropPath ?? "");
    writer.writeString(obj.homepage ?? "");
    writer.writeInt(obj.budget ?? 0);
    writer.writeString(obj.imdbId ?? "");
    writer.writeStringList(obj.originCountry ?? []);
    writer.writeString(obj.originalLanguage ?? "");
    writer.writeString(obj.originalTitle ?? "");
    writer.writeString(obj.overview ?? "");
    writer.writeDouble(obj.popularity ?? 0.0);
    writer.writeString(obj.posterPath ?? "");
    writer.writeString(obj.releaseDate ?? "");
    writer.writeInt(obj.revenue ?? 0);
    writer.writeInt(obj.runtime ?? 0);
    writer.writeString(obj.status ?? "");
    writer.writeInt(obj.statusCode ?? 0);
    writer.writeString(obj.statusMessage ?? "");
    writer.writeBool(obj.success ?? false);
    writer.writeString(obj.tagline ?? "");
    writer.writeBool(obj.video ?? false);
    writer.writeDouble(obj.voteAverage ?? 0.0);
    writer.writeInt(obj.voteCount ?? 0);
    writer.writeList(obj.genres?.toList() ?? []);
    writer.writeList(obj.productionCompanies?.toList() ?? []);
    writer.writeList(obj.productionCountries?.toList() ?? []);
    writer.writeList(obj.spokenLanguages?.toList() ?? []);
  }
}
