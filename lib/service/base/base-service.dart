import 'dart:convert';

import 'package:animeku/utils/dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

enum RequestType { GET, POST, DELETE }

class BaseService {
    Dio _dio =  new Dio();
     Options ? _headersOption;

 Future<dynamic> request(String url, RequestType type, BuildContext context,
      {dynamic? data, bool? useToken}) async {
    var response;

    //If this route use token then fetch token
    // if (useToken != null && useToken) {
    //   await _getToken();
    // } else {
    //   _headersOption = ConfigServices.getHeaders();
    // }

    try {
      switch (type) {
        case RequestType.POST:
          response = await _dio.post(url,
              data: data != null ? data : null, options: _headersOption);
          break;
        case RequestType.GET:
          response = await _dio.get(url, options: _headersOption);
          break;
        case RequestType.DELETE:
          response = await _dio.delete(url,
              data: data != null ? data : null, options: _headersOption);
          break;
      }
    } on DioError catch (e) {
      response = e.response;
    }

    //* Handling error and status code
    response = json.decode(response.toString());

    //* if 401 then return to login
  if (response["code"] == 403) {
      DialogUtils.instance.showInfo(context, 
        "Session Expired, silahkan masukkan api key yang valid", 
        Icons.error, "OK", onClick: () async {
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        });
      return null;
    }
  
    return response;
  }
}