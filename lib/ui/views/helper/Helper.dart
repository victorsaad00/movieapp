import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final Helper = _Helper();

class _Helper {

  Size getBodySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double getBodyHeight(BuildContext context) {
    return getBodySize(context).height;
  }

  double getBodyWidth(BuildContext context) {
    return getBodySize(context).width;
  }

  void go(context, routeName) {
    Navigator.pushNamed(context, routeName);
  }

  void back(context) {
    Navigator.pop(context);
  }

  void exit(context) {
    Navigator.pushNamedAndRemoveUntil(
        context, '/', (Route<dynamic> route) => false);
  }

  Object getRouteArgs(context) {
    return ModalRoute.of(context).settings.arguments;
  }

  // Path to the api
  String _path(String res, [int id]) {
    String result = '';
    if (id != null) result = '$result/$id';
    return result;
  }

  var _server = 'JSON SERVER URL';

  bool isOK(http.Response response) {
    return response.statusCode >= 200 && response.statusCode < 300;
  }

  Future<T> getJson<T>(String res, T fromJson(json), [Map<String, String> params]) async {
    var uri = Uri.https(_server, _path(res), params);
    var response = await http.get(uri, headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
    });
    return _parseResponse(response, fromJson);
  }
  
  Future<T> putJson<T>(String res, int id,T fromJson(Map<String, dynamic> json), Map<String, dynamic> body) async {
    http.Response response = await _insertOrUpdate(res, id, body);
    return _parseResponse(response, fromJson);
  }

  dynamic _parseResponse(http.Response response, fromJson) {
    if (isOK(response)) {
      var jsonResponse = jsonDecode(response.body);
      return fromJson(jsonResponse);
    } else {
      throw Exception('Falha ao carregar os dados.');
    }
  }

  Future<http.Response> _insertOrUpdate(
      String res, int id, Map<String, dynamic> body) async {
    var uri = Uri.https(_server, _path(res, id));
    if (id == null) {
      return http.post(uri, body: jsonEncode(body), headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      });
    } else {
      return http.put(uri, body: jsonEncode(body), headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      });
    }
  }

  Future<bool> deleteJson(String res, int id) async {
    var uri = Uri.https(_server, _path(res, id));
    var response = await http.delete(uri, headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
    });
    return isOK(response);
  }
  
}