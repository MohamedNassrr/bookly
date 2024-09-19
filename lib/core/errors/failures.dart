import 'package:dio/dio.dart';

abstract class Failures{
  final String errorMessage;

 const Failures(this.errorMessage);
}

class ServerFailures extends Failures{
  ServerFailures(super.errorMessage);

  factory ServerFailures.fromDioError(DioException dioError){
    switch(dioError.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailures('no internet connection');
      case DioExceptionType.sendTimeout:
        return ServerFailures('send timeout in apiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailures('receive timeout in apiServer');
      case DioExceptionType.badCertificate:
        return ServerFailures('bad certificate in apiServer');
      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailures('request cancelled in apiServer');
      case DioExceptionType.connectionError:
        return ServerFailures('connection error in apiServer');
      case DioExceptionType.unknown:
       if(dioError.message!.contains('SocketException')){
         return ServerFailures('No Internet Connection');
       }
       return ServerFailures('Unexpected Error, Please Try Again');
       default:
         return ServerFailures('Opps There Was an Error, Please try again later');
    }
  }

  factory ServerFailures.fromResponse(int statusCode, dynamic response){
    if(statusCode == 400 ||statusCode == 401 ||statusCode == 403){
      return ServerFailures(response['error']['message']);
    }else if(statusCode == 404){
      return ServerFailures('Your request not found, Please try again later');
    }else if(statusCode == 500){
      return ServerFailures('Internal server error, Please try again later');
    }else{
      return ServerFailures('Opps There Was an Error, Please try again later');
    }
  }
}