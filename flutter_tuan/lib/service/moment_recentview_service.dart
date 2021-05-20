import 'dart:convert';

import 'package:flutter_tuan/configuration/configuration.dart';
import 'package:http/http.dart' as http;

getMomentRecentViewResult() async{
  String ip=Config.IP;
  String port=Config.PORT;
  String uri='';

  var response=await http.get(Uri.parse(uri));
  String body=response.body;
  var json=jsonDecode(body);

  return json['item'] as List;
}