
import 'dart:convert';

import 'package:http/http.dart' as http;

getTuanActivityResult({int page,String name}) async{


  String uri= '';
  var response=await http.get(Uri.parse(uri));
  String body=response.body;

  var json=jsonDecode(body);

  switch (name){
    case '推荐':
      return json['recommend'] as List;
      break;
    case '即将开始':
      return json['soon'] as List;
      break;
    case '排名':
      return json['rank'] as List;
      break;
    default:

      return;
  }
}