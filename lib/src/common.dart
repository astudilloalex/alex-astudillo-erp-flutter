import 'dart:convert';

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
  HttpBaseClient(this.client);

  /// The singleton client while app is active.
  final Client client;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
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

/// Used to separate the conversion on isolates.
String _toJson(Map<String, dynamic> data) {
  return json.encode(data);
}

/// Used to separate the json string convetion in isolates.
Map<String, dynamic> _fromJson(String data) {
  return json.decode(data) as Map<String, dynamic>;
}
