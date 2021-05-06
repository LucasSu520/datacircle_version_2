import 'package:flutter/material.dart';

class ForumSubscrib extends StatefulWidget {
  @override
  _ForumSubscribState createState() => _ForumSubscribState();
}

class _ForumSubscribState extends State<ForumSubscrib> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
           Padding(padding: EdgeInsets.fromLTRB(19, 8, 19, 0),child:Row(
             children: [
               Expanded(
                   child: Text(
                     '关注的游戏论坛',
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                     textAlign: TextAlign.left,
                   )),
               Expanded(
                   child: Text(
                     '更多',
                     style:
                     TextStyle(fontSize: 14, color: Colors.lightBlue),
                     textAlign: TextAlign.right,
                   ))
             ],
           ) ,) ,
            Padding(padding: EdgeInsets.fromLTRB(4, 8, 4, 0),child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                      image: DecorationImage(
                          image: AssetImage('images/duoduo.jpg'),
                          fit: BoxFit.cover)),
                ),
                title: Text('原神'),
                subtitle: Text('390新帖 · 这张照片不应该被我看见'),
              ),
            ) ,) ,
          ],
        ));
  }
}
