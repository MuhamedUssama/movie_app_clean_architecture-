import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
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

    // if (kDebugMode) {
    //   client.interceptors.add(LogInterceptor(
    //     request: true,
    //     requestBody: true,
    //     requestHeader: true,
    //     responseHeader: true,
    //     responseBody: true,
    //     error: true,
    //   ));
    // }
  }

  @override
  Future post(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final response = await client.post(path, queryParameters: queryParameters);
    return jsonEncode(response.data);
  }

  @override
  Future get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final response = await client.get(path, queryParameters: queryParameters);
    return jsonDecode(response.data);
  }

  @override
  Future put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final response = await client.put(path, queryParameters: queryParameters);
    return jsonEncode(response.data);
  }

  @override
  Future delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final response =
        await client.delete(path, queryParameters: queryParameters);
    return jsonEncode(response.data);
  }
}
