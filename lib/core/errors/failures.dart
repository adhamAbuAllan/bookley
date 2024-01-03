
import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError){
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connectoin timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive timeout with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was canceled");
      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure("no Internel Connection");
        }
        return ServerFailure("Unexpected Error, Please try again");
        default:
          return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response){
    if (statusCode == 400 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('our request not found , Please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , Please try again');
    } else {
      return ServerFailure("Opps There was an Error, Please try again");
    }
  }
}