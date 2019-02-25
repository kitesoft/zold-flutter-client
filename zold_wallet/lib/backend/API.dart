import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert' show utf8;

class API {
  
  static const String BASE_URL = "https://wts.zold.io/";
  static String apiKey = "";
  http.Client client;

  API() {
    client = http.Client();
  }

  Future<String> getId() async {
    debugPrint(apiKey);
    var headers =  {"X-Zold-Wts": apiKey};
    final url = "${BASE_URL}id";
    final request = http.Request('GET', Uri.parse(url));
    request.headers.addAll(headers);
    request.followRedirects = false;
    final response = await client.send(request);
    if(response.statusCode == 200) {
      return response.stream.toString();
    }
    throw new Exception("Error: status code is not 200");
  }

  Future<String> getBalance() async {
    var headers =  {"X-Zold-Wts": apiKey};
    final url = "${BASE_URL}balance";
    final request = http.Request('GET', Uri.parse(url));
    request.headers.addAll(headers);
    request.followRedirects = false;
    http.StreamedResponse response = await client.send(request);
    if(response.statusCode == 200) {
      return response.stream.toString();
    }
    throw Exception("Error: status code is not 200");
  }

  Future<String> pull() async {
    var headers =  {"X-Zold-Wts": apiKey};
    final url = "${BASE_URL}pull";
    final request = http.Request('GET', Uri.parse(url));
    request.headers.addAll(headers);
    request.followRedirects = false;
    final response = await client.send(request);
    if(response.statusCode == 302) {
      return "success";
    }
    throw new Exception("Error: status code is not 302");
  }

  Future<String> getCode(String phone) async {
    final url = "${BASE_URL}mobile/send?phone="+phone;
    final request = http.Request('GET', Uri.parse(url));
    request.followRedirects = false;
    final response = await client.send(request);
    final statusCode = response.statusCode;
    debugPrint(statusCode.toString());
    String responseData = await response.stream.transform(utf8.decoder).join();
    debugPrint(responseData);
    if(statusCode == 200) {
      return "success";
    }
    throw new Exception("Error: status code is not 200");
  }

  Future<String> getToken(String phone, String key) async {
    final url = "${BASE_URL}mobile/token?phone=" + phone + "&code=" + key;
    final request = http.Request('GET', Uri.parse(url));
    request.followRedirects = false;
    final response = await client.send(request);
    final statusCode = response.statusCode;
    debugPrint(statusCode.toString());
    String responseData = await response.stream.transform(utf8.decoder).join();
    debugPrint(responseData);
    if(statusCode == 200) {
      apiKey = responseData;
      return apiKey;
    }
    throw new Exception("Error: status code is not 200");
  }

}