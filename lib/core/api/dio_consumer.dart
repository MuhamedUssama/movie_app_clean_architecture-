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
import 'package:movie_app/core/errors/exceptions.dart';

@Injectable(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  @singleton
  final Dio client = Dio();

  @factoryMethod
  DioConsumer() {
    (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      // ..responseType = ResponseType.stream
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
    try {
      final response =
          await client.post(path, queryParameters: queryParameters);
      return jsonEncode(response.data);
    } on DioError catch (error) {
      _handleDioError(error);
    }
  }

  @override
  Future get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Options? options,
  }) async {
    try {
      final response = await client.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return jsonDecode(response.data);
    } on DioError catch (error) {
      _handleDioError(error);
    }
  }

  @override
  Future put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await client.put(path, queryParameters: queryParameters);
      return jsonEncode(response.data);
    } on DioError catch (error) {
      _handleDioError(error);
    }
  }

  @override
  Future delete(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      final response =
          await client.delete(path, queryParameters: queryParameters);
      return jsonEncode(response.data);
    } on DioError catch (error) {
      _handleDioError(error);
    }
  }

  dynamic _handleDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw const FetchDataException();
      case DioErrorType.response:
        switch (error.response?.statusCode) {
          case StatusCode.badRequest:
            throw const BadRequestException();
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
            throw const UnauthorizedException();
          case StatusCode.notFound:
            throw const NotFoundException();
          case StatusCode.confilct:
            throw const ConflictException();

          case StatusCode.internalServerError:
            throw const InternalServerErrorException();
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw const NoInternetConnectionException();
    }
  }
}
