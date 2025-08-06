import 'package:dio/dio.dart';
import 'package:wash_app_flutter/core/api/api_consumer.dart';
import 'package:wash_app_flutter/core/api/dio_interceptors.dart';
import 'package:wash_app_flutter/core/api/end_point.dart';
import 'package:wash_app_flutter/core/error/server_exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(
      LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
  }

  @override
  Future delete(
    String path, {
    data,
    Map<String, dynamic>? queryoarameter,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryoarameter,
      );
      return response.data;
    } on DioException catch (e) {
      handelExceptions(e);
    }
  }

  @override
  Future get(String path, {data, Map<String, dynamic>? queryoarameter}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryoarameter,
      );
      return response.data;
    } on DioException catch (e) {
      handelExceptions(e);
    }
  }

  @override
  Future patch(
    String path, {
    data,
    Map<String, dynamic>? queryoarameter,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryoarameter,
      );
      return response.data;
    } on DioException catch (e) {
      handelExceptions(e);
    }
  }

  @override
  Future post(
    String path, {
    data,
    Map<String, dynamic>? queryoarameter,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.put(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryoarameter,
      );
      return response.data;
    } on DioException catch (e) {
      handelExceptions(e);
    }
  }
}
