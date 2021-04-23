import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/common_model.dart';
import 'package:flutter_tuan/widget/tile_subscrib.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  List<CommonModel> localNavList;


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child:Padding(child:( Container(
        child: Text('多多')
      )),padding: EdgeInsets.symmetric(horizontal: 19),
    ));
  }
}
