import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/moment_sub_activity_model.dart';
import 'package:flutter_tuan/pages/cat_page.dart';

import '../app_theme.dart';
import 'ExpandedText.dart';

class MomentSubActivityDetail extends StatelessWidget {
  MomentSubActivityDetail({this.item});
  final MomentSubActivityItemModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                          image: AssetImage(item.avatar), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(item.time, style: AppTheme.subtitle)
                  ],
                )
              ],
            ))),
        Padding(
          padding: EdgeInsets.only(top: 6),
          child: ExpandedText(
            expandText: '查看全文',
            text: item.content,
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
            image: AssetImage(item.pict),
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
                  child: Text(
                    '：',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.grey),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
