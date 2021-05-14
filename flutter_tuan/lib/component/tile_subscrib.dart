import 'package:flutter/material.dart';

import 'package:flutter_tuan/component/ExpandedText.dart';
import 'package:flutter_tuan/pages/cat_page.dart';

class TileSubscribe extends StatefulWidget {
  @override
  _TileSubscribeState createState() => _TileSubscribeState();
}

class _TileSubscribeState extends State<TileSubscribe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: (Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('images/duoduo.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '黄忆慈',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '22小时前',
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ))),
          Padding(
            padding: EdgeInsets.only(top: 6),
            child: ExpandedText(
              expandText: '查看全文',
              text:
                  '''独立寒秋，湘江北去，橘子洲头。''',
              textAlign: TextAlign.start,
              maxLines: 4,
              route: MaterialPageRoute(builder: (ctx) {
                return CategoryPage();
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Image(
              image: AssetImage('images/concert.jpg'),
              width: MediaQuery.of(context).size.width - 100,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    height: 18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('images/tweet.png'),
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Image(
                          image: AssetImage('images/thumbs_up.png'),
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Image(
                          image: AssetImage('images/comment.png'),
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  // TODO add the feature of push a pop_page.
                  Expanded(
                    child: Text('：',textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: Colors.grey),),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
