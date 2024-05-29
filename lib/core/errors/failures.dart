import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with ApiService');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with ApiService');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with ApiService');
      case DioExceptionType.badCertificate:
        return ServerFailure('HandShake BadCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        ServerFailure('Api request canceled');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }

      case DioExceptionType.unknown:
        return ServerFailure('Opps there was an error, please try again');
    }
    return ServerFailure.fromDioException(dioException);
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later !');
    } else if (statusCode == 500) {
      return ServerFailure('Enternal Server Error, please try later');
    } else {
      return ServerFailure('Opps there was an error, please try again');
    }
  }
}
