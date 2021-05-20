import 'dart:convert';

import 'package:flutter_tuan/model/cat_activity_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_tuan/configuration/configuration.dart';

getCatActivityResult() async {
  const Url = Config.IP + Config.PORT;
  var response = await http.get(Uri.parse(Url));
  String body = response.body;
  var json = jsonDecode(body);

  return json['item'] as List;
}
