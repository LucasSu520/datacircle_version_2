import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/common_model.dart';
import 'package:flutter_tuan/widget/local_nav.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  List<CommonModel> localNavList;


  @override
  void initState() {
    this.localNavList=[
      CommonModel(image: 'assets/lunZiMa',title: 'LOL线下比赛',isOfficial: true),
      CommonModel(image: 'assets/MeetingRoom.jpg',title: '图书馆圆桌会议',isOfficial: false),
      CommonModel(image: 'assets/wolfKill,jpeg',title: '狼人杀线下组局',isOfficial: true),
      // CommonModel(image: 'assets/party.jpg',title: '毕业party',isOfficial: true),
      // CommonModel(image: 'assets/wolfKill,jpeg',title: '狼人杀线下组局',isOfficial: true),
      // CommonModel(image: 'assets/party.jpg',title: '毕业party',isOfficial: true),
      // CommonModel(image: 'assets/wolfKill,jpeg',title: '狼人杀线下组局',isOfficial: true),
      // CommonModel(image: 'assets/party.jpg',title: '毕业party',isOfficial: true),
      // CommonModel(image: 'assets/wolfKill,jpeg',title: '狼人杀线下组局',isOfficial: true),
      // CommonModel(image: 'assets/party.jpg',title: '毕业party',isOfficial: true),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(color: Colors.blueAccent,
      width:MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
      child: LocalNav(localNavList: this.localNavList,title: '网游',),
    );
  }
}
