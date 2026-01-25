import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Fealure {
  final String errMessage;
  Fealure(this.errMessage);
}

class ServerFealure extends Fealure {

  ServerFealure(super.errMessage);
  factory ServerFealure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFealure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFealure('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFealure('Receive Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFealure('Bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        {
          if (dioError.response != null &&
              dioError.response?.statusCode != null) {
            switch (dioError.response!.statusCode!) {
              case 400:
                return ServerFealure('Bad request');
              case 401:
                return ServerFealure('Unauthorized');
              case 403:
                return ServerFealure('Forbidden');
              case 404:
                return ServerFealure('Not Found');
              case 500:
                return ServerFealure('Internal Server Error');
              default:
                return ServerFealure('Unexpected error occurred');
            }
          } else {
            return ServerFealure('Unexpected error occurred');
          }
        }
      case DioExceptionType.cancel:
        return ServerFealure('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFealure('Connection Error with ApiServer');
      case DioExceptionType.unknown:
        return ServerFealure('Unexpected error occurred');
    }
  }
}
