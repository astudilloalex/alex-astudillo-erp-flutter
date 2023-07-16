import 'dart:convert';
import 'dart:io';

import 'package:alex_astudillo_erp/app/services/local_data_service.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

/// The default response from backend.
class DefaultResponse {
  /// Define a [DefaultResponse] class.
  const DefaultResponse({
    this.data,
    this.first = true,
    this.last = false,
    required this.message,
    this.numberOfElements,
    this.offset,
    this.pageNumber,
    required this.statusCode,
    this.totalElements,
    this.totalPages,
  });

  /// The data from backend.
  final dynamic data;

  /// Used in pagination if is the first page, defaults true.
  final bool first;

  /// Used in pagination if is the last page, defaults false.
  final bool last;

  /// The message from backend.
  final String message;

  /// The total number of elements in page.
  final int? numberOfElements;

  /// The offset of page.
  final int? offset;

  /// The current page number.
  final int? pageNumber;

  /// The status code response from backend.
  final int statusCode;

  /// The total elements available.
  final int? totalElements;

  /// The total pages available.
  final int? totalPages;

  /// Returns a new [DefaultResponse] class with new values.
  DefaultResponse copyWith({
    dynamic data,
    bool? first,
    bool? last,
    String? message,
    int? numberOfElements,
    int? offset,
    int? pageNumber,
    int? statusCode,
    int? totalElements,
    int? totalPages,
  }) {
    return DefaultResponse(
      first: first ?? this.first,
      last: last ?? this.last,
      message: message ?? this.message,
      numberOfElements: numberOfElements ?? this.numberOfElements,
      offset: offset ?? this.offset,
      pageNumber: pageNumber ?? this.pageNumber,
      statusCode: statusCode ?? this.statusCode,
      totalElements: totalElements ?? this.totalElements,
      totalPages: totalPages ?? this.totalPages,
      data: data ?? this.data,
    );
  }

  /// Factory that returns a [DefaultResponse] class from [json] map.
  factory DefaultResponse.fromJson(Map<String, dynamic> json) {
    return DefaultResponse(
      data: json['data'],
      first: (json['first'] as bool?) ?? true,
      last: (json['last'] as bool?) ?? false,
      message: json['message'] as String,
      numberOfElements: json['numberOfElements'] as int?,
      offset: json['offset'] as int?,
      pageNumber: json['pageNumber'] as int?,
      statusCode: json['statusCode'] as int,
      totalElements: json['totalElements'] as int?,
      totalPages: json['totalPages'] as int?,
    );
  }
}

/// The HTTP base client to manage the request.
class HttpBaseClient extends BaseClient {
  /// Define a [HttpBaseClient]
  HttpBaseClient(
    this.client,
    this.localDataService,
  );

  /// The singleton client while app is active.
  final Client client;
  final LocalDataService localDataService;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    // Get and set token to header requests.
    final String? token = await localDataService.jwt;
    if (token != null) {
      request.headers.addAll({
        HttpHeaders.authorizationHeader: token,
      });
    }
    // Set accept header.
    if (!request.headers.containsKey(HttpHeaders.acceptHeader)) {
      request.headers.addAll({HttpHeaders.acceptHeader: 'application/json'});
    }
    // Set content type.
    if (!request.headers.containsKey(HttpHeaders.contentTypeHeader) ||
        request.headers[HttpHeaders.contentTypeHeader]!
            .contains('text/plain')) {
      request.headers.addAll({
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      });
    }
    return client.send(request);
  }

  /// The URL for API first version.
  String get baseV1URL => 'http://localhost:5034/api/v1';

  /// Parse [data] map to json with isolates.
  Future<String> parseToJson(Map<String, dynamic> data) async {
    if (kIsWeb) return _toJson(data);
    return compute(_toJson, data);
  }

  /// Parse json [data] with isolates.
  Future<Map<String, dynamic>> parseFromJson(String data) async {
    if (kIsWeb) return _fromJson(data);
    return compute(_fromJson, data);
  }
}

/// Class to manage HTTP exceptions.
class HttpException implements Exception {
  const HttpException({
    required this.code,
    required this.message,
  });

  /// The HTTP code.
  final int code;

  /// The message of exception.
  final String message;
}

/// Used to separate the conversion on isolates.
String _toJson(Map<String, dynamic> data) {
  return json.encode(data);
}

/// Used to separate the json string convetion in isolates.
Map<String, dynamic> _fromJson(String data) {
  return json.decode(data) as Map<String, dynamic>;
}
