import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/core/api/app_interceptors.dart';
import 'package:movie_app/core/api/end_points.dart';
import 'package:movie_app/core/api/status_code.dart';

@Injectable(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  final Dio client;

  @factoryMethod
  DioConsumer({required this.client}) {
    (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.json
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < StatusCode.internalServerError;
      };

    client.interceptors.add(AppInterceptors());
  }

  @override
  Future delete(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future get(String path,
      {Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, String>? headers}) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
