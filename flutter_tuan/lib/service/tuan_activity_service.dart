//set the api
//use http to get json
//then use the json.body
import 'dart:convert';

import 'package:http/http.dart' as http;

getTuanActivityResult({int page,String name}) async{

  String uri= '';
  var response=await http.get(Uri.parse(uri));
  String body=response.body;

  var json=jsonDecode(body);

  return json['item'] as List;
}