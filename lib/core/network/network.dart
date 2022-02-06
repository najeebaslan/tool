import 'dart:convert';

import 'package:tool/core/network/response.dart';
import 'package:tool/core/network/util.dart';
import 'package:http/http.dart' as http;

class ToolLogNetwork {
  static Future<ToolNetworkResponse> post(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http.post(
        ToolNetworkUtil.parseToUri(url, format: true),
        headers: headers,
        body: body,
        encoding: encoding);

    return ToolNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<ToolNetworkResponse> get(String url,
      {Map<String, String>? headers}) async {
    http.Response response = await http.get(
      ToolNetworkUtil.parseToUri(url, format: true),
      headers: headers,
    );

    return ToolNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<ToolNetworkResponse> delete(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .delete(ToolNetworkUtil.parseToUri(url, format: true), headers: headers);

    return ToolNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<ToolNetworkResponse> put(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .put(ToolNetworkUtil.parseToUri(url, format: true), headers: headers);

    return ToolNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<ToolNetworkResponse> patch(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .patch(ToolNetworkUtil.parseToUri(url, format: true), headers: headers);

    return ToolNetworkResponse(response.body, response.statusCode, response);
  }

  static Future<ToolNetworkResponse> head(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    http.Response response = await http
        .head(ToolNetworkUtil.parseToUri(url, format: true), headers: headers);

    return ToolNetworkResponse(response.body, response.statusCode, response);
  }
}
