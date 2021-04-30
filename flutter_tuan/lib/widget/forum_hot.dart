import 'package:flutter/material.dart';

class ForumHot extends StatefulWidget {
  @override
  _ForumHotState createState() => _ForumHotState();
}

class _ForumHotState extends State<ForumHot> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(padding: EdgeInsets.fromLTRB(19, 5,19, 0),child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                      '热门游戏论坛',
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
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/lunZiMa.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  )),
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                title: Container(
                  child: Text(
                    '明日方舟',textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                ),
                subtitle: Row(
                  children: [
                    Container(
                      child: Text(
                        '1816万+关注 \r',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      child: Text(
                        "·\r",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      child: Text(
                        '545新帖 \r',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
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
              ),
            ),
          ],
        ),) );
  }
}
