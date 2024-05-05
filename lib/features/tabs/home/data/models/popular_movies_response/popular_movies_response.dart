import '../result.dart';

class PopularMoviesResponse {
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;
  bool? success;
  int? statusCode;
  String? statusMessage;

  PopularMoviesResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
    this.statusCode,
    this.statusMessage,
    this.success,
  });

  PopularMoviesResponse.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
    statusCode = json['status_code'];
    success = json['success'];
    statusMessage = json['status_message'];
  }

  PopularMoviesResponse copyWith({
    int? page,
    List<Results>? results,
    int? totalPages,
    int? totalResults,
    bool? success,
    int? statusCode,
    String? statusMessage,
  }) =>
      PopularMoviesResponse(
        page: page ?? this.page,
        results: results ?? this.results,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
        statusCode: statusCode ?? this.statusCode,
        statusMessage: statusMessage ?? this.statusMessage,
        success: success ?? this.success,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    map['success'] = success;
    map['status_code'] = statusCode;
    map['status_message'] = statusMessage;
    return map;
  }
}
