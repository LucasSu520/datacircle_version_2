import 'package:flutter/material.dart';

class ForumItem extends StatefulWidget {
  @override
  _ForumItemState createState() => _ForumItemState();
}

class _ForumItemState extends State<ForumItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(4, 8, 4 ,0),child:ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
            image: DecorationImage(
                image: AssetImage('assets/duoduo.jpg'), fit: BoxFit.cover)),
      ),
      title: Text('香肠派对'),
      subtitle: Row(
        children: [Text('1816万+关注 \r'), Text("·\r"), Text('545新帖')],
      ),
      trailing: ElevatedButton(
        onPressed: () {
          print('多多');
        },
        child: Text('关注'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))))),
      ),
    ) ,) ;
  }
}
