import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled([
    @Default('Request cancelled') String errorMessage,
  ]) = _RequestCancelled;

  const factory NetworkExceptions.unauthorisedRequest([
    @Default('Unauthorized request') String errorMessage,
  ]) = _UnauthorisedRequest;

  const factory NetworkExceptions.badRequest([
    @Default('Bad request') String errorMessage,
  ]) = _BadRequest;

  const factory NetworkExceptions.notFound([
    @Default('Not found') String errorMessage,
  ]) = _NotFound;

  const factory NetworkExceptions.methodNotAllowed([
    @Default('Method not allowed') String errorMessage,
  ]) = _MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable([
    @Default('Not acceptable') String errorMessage,
  ]) = _NotAcceptable;

  const factory NetworkExceptions.connectionTimeout([
    @Default('Request timeout') String errorMessage,
  ]) = _ConnectionTimeout;

  const factory NetworkExceptions.receiveTimeout([
    @Default('Receive timeout') String errorMessage,
  ]) = _ReceiveTimeout;

  const factory NetworkExceptions.sendTimeout([
    @Default('Send timeout') String errorMessage,
  ]) = _SendTimeout;

  const factory NetworkExceptions.requestTimeout([
    @Default('Request timeout') String errorMessage,
  ]) = _RequestTimeout;

  const factory NetworkExceptions.conflict([
    @Default('Conflict') String errorMessage,
  ]) = _Conflict;

  const factory NetworkExceptions.internalServerError([
    @Default('Internal server error') String errorMessage,
  ]) = _InternalServerError;

  const factory NetworkExceptions.serviceUnavailable([
    @Default('Service unavailable') String errorMessage,
  ]) = _ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection([
    @Default('No internet conection') String errorMessage,
  ]) = _NoInternetConnection;

  const factory NetworkExceptions.formatException([
    @Default('Format exception') String errorMessage,
  ]) = _FormatException;

  const factory NetworkExceptions.unableToProcess([
    @Default('Unable to process') String errorMessage,
  ]) = _UnableToProcess;

  const factory NetworkExceptions.defaultError([
    @Default('Something went wrong') String errorMessage,
  ]) = _DefaultError;

  const factory NetworkExceptions.unexpectedError([
    @Default('Unexpected error') String errorMessage,
  ]) = _UnexpectedError;

  const factory NetworkExceptions.preconditionFailed([
    @Default('Precondition failed') String errorMessage,
  ]) = _PreconditionFailed;

  const factory NetworkExceptions.forbidden([
    @Default('Forbidden') String errorMessage,
  ]) = _Forbidden;

  const factory NetworkExceptions.tooManyRequest([
    @Default('Too many request') String errorMessage,
  ]) = _TooManyRequest;
}

extension DioToNetworkException on DioError {
  NetworkExceptions toNetworkException() {
    NetworkExceptions networkExceptions;
    switch (type) {
      case DioErrorType.cancel:
        networkExceptions = const NetworkExceptions.requestCancelled();
        break;
      case DioErrorType.connectTimeout:
        networkExceptions = const NetworkExceptions.connectionTimeout();
        break;
      case DioErrorType.sendTimeout:
        networkExceptions = const NetworkExceptions.sendTimeout();
        break;
      case DioErrorType.receiveTimeout:
        networkExceptions = const NetworkExceptions.receiveTimeout();
        break;
      case DioErrorType.response:
        // final String errorMessage = response!.data['error'].toString();
        // we get some response from server so needed to use response here.
        switch (response!.statusCode) {
          case 400:
            networkExceptions = const NetworkExceptions.badRequest();
            break;
          case 401:
            networkExceptions = const NetworkExceptions.unauthorisedRequest();
            break;
          case 403:
            networkExceptions = const NetworkExceptions.forbidden();
            break;
          case 404:
            networkExceptions = const NetworkExceptions.notFound();
            break;
          case 408:
            networkExceptions = const NetworkExceptions.requestTimeout();
            break;
          case 409:
            networkExceptions = const NetworkExceptions.conflict();
            break;
          case 412:
            networkExceptions = const NetworkExceptions.preconditionFailed();
            break;
          case 429:
            networkExceptions = const NetworkExceptions.tooManyRequest();
            break;
          case 500:
            networkExceptions = const NetworkExceptions.internalServerError();
            break;
          case 503:
            networkExceptions = const NetworkExceptions.serviceUnavailable();
            break;
          default:
            networkExceptions = NetworkExceptions.defaultError(
              "Received invalid status code: ${response!.statusCode}",
            );
        }
        break;
      case DioErrorType.other:
        // we got some other kind of errors like socket exception or
        // network exception etc
        if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else if (error is FormatException) {
          networkExceptions = const NetworkExceptions.formatException();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        break;
      default:
        networkExceptions = const NetworkExceptions.unexpectedError();
    }
    return networkExceptions;
  }
}
