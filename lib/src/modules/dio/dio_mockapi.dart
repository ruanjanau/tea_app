import 'package:dio/dio.dart';

class DioMockApi {
  Dio dioClient = Dio();
  final baseUrl = 'https://6573803a063f876cec9cf9f6.mockapi.io/';

  static final DioMockApi _instance = DioMockApi._internal();

  factory DioMockApi() {
    _instance.dioClient.interceptors.add(getInterceptor());
    return _instance;
  }

  DioMockApi._internal();

  Dio get dio => dioClient;

  static InterceptorsWrapper getInterceptor() {
    return InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        print('Request: ${options.method} ${options.path}');
        print('Request data: ${options.data}');
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        print('Response: ${response.statusCode} ${response.data}');
        return handler.next(response);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        print('Error: $error');
        return handler.next(error);
      },
    );
  }
}
