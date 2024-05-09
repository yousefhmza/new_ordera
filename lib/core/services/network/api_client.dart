import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../resources/resources.dart';
import '../local/cache_client.dart';
import '../local/storage_keys.dart';

const String _baseURL = "https://hexfashion.xyz/api/tenant/v1";
const String _contentType = "Content-Type";
const String _accept = "accept";
const String _applicationJson = "application/json";
const String _acceptLanguage = "Accept-Language";
const String _authorization = "Authorization";

class ApiClient {
  final Dio _dio;
  final CacheClient _cacheClient;
  final Interceptor _prettyDioLogger;

  ApiClient(this._dio, this._cacheClient, this._prettyDioLogger) {
    final BaseOptions baseOptions = BaseOptions(
      baseUrl: _baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: Time.t30s,
      receiveTimeout: Time.t30s,
      sendTimeout: Time.t30s,
      headers: {
        _contentType: _applicationJson,
        _accept: _applicationJson,
        _acceptLanguage: _cacheClient.get(StorageKeys.appLocale) ?? Platform.localeName.substring(0, 2),
      },
    );

    _dio.options = baseOptions;

    if (kDebugMode) _dio.interceptors.add(_prettyDioLogger);
  }

  void changeLocale(String languageCode) => _dio.options.headers[_acceptLanguage] = languageCode;

  Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    bool useToken = true,
  }) async {
    final String? token = await _cacheClient.get(StorageKeys.token);
    return await _dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(
        headers: {
          if (token != null && useToken) _authorization: "Bearer $token",
        },
      ),
    );
  }

  Future<Response> post({
    required String url,
    required var requestBody,
    Map<String, dynamic>? queryParameters,
    String? customToken,
  }) async {
    final String? token = customToken ?? await _cacheClient.get(StorageKeys.token);
    return await _dio.post(
      url,
      queryParameters: queryParameters,
      data: requestBody,
      options: Options(
        headers: {
          if (token != null) _authorization: "Bearer $token",
        },
      ),
    );
  }

  Future<Response> update({
    required String url,
    required var requestBody,
    Map<String, dynamic>? queryParameters,
  }) async {
    final String? token = await _cacheClient.get(StorageKeys.token);
    return await _dio.put(
      url,
      queryParameters: queryParameters,
      data: requestBody,
      options: Options(
        headers: {
          if (token != null) _authorization: "Bearer $token",
        },
      ),
    );
  }

  Future<Response> delete({
    required String url,
    var requestBody,
    Map<String, dynamic>? queryParameters,
  }) async {
    final String? token = await _cacheClient.get(StorageKeys.token);
    return await _dio.delete(
      url,
      queryParameters: queryParameters,
      data: requestBody,
      options: Options(
        headers: {
          if (token != null) _authorization: "Bearer $token",
        },
      ),
    );
  }
}
