import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  const Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error, please try later');
      default:
        return ServerFailure('Oops there was an error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later!');
    } else if (statusCode == 500 ||
        statusCode == 502 ||
        statusCode == 503 ||
        statusCode == 504) {
      return ServerFailure('Internal server error, please try later!');
    } else if (statusCode == 429) {
      return ServerFailure(
          'Surpassing the limit of your subscription To avoid this situation, please consider upgrading to a subscription plan that meets your needs or reduce the number of API calls in accordance with the limits');
    } else {
      return ServerFailure('Oops there was an error, please try again');
    }
  }
}
