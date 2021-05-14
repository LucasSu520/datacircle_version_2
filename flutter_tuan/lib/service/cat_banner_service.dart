import 'package:flutter_tuan/configuration/configuration.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

getCatBannerResult() async{
  String url=Config.IP+Config.PORT;
  var response=await http.get(Uri.parse(url));
  String body=response.body;

  var json=jsonDecode(body);

  return json['items'] as List;
}