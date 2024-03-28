import 'package:dio/dio.dart';
import 'package:ecomerce_project/core/infrastructure/interface_params.dart';

class HttpService {
  HttpService(this._dio);
  final Dio _dio;

  Future<Response<T>> get<T>(IParam param, [CancelToken? cancelToken]) {
    return _dio.get(
      param.link,
      queryParameters: param.json,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> post<T>(IParam param, [CancelToken? cancelToken]) async {
    return _dio.post(
      param.link,
      data: param.json,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> put<T>(IParam param, [CancelToken? cancelToken]) async {
    return _dio.put(
      param.link,
      data: param.json,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> delete<T>(IParam param,
      [CancelToken? cancelToken]) async {
    return _dio.delete(
      param.link,
      data: param.json,
      cancelToken: cancelToken,
    );
  }
}
