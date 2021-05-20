import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/moment_model.dart';
import 'package:flutter_tuan/pages/cat_page.dart';
import '../app_theme.dart';
import 'ExpandedText.dart';

class MomentItemDetail extends StatelessWidget {
  MomentItemDetail({this.item});
  final MomentItemModel item;
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
                CircleAvatar(backgroundImage: AssetImage(item.avatar,),radius: 25,),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      // TODO
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(item.time, style: AppTheme.subtitle),
                      ],
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    height: 25,
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          print('多多');
                        },
                        child: item.isSubscribe
                            ? Container(
                                height: 25,
                                width: 70,
                                alignment: Alignment.center,
                                child: Text(
                                  '已关注',
                                  style: TextStyle(
                                      color: Color(0x88555555),
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0x99EEEEEE),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ))
                            : Container(
                                height: 25,
                                width: 70,
                                alignment: Alignment.center,
                                child: Text('关注',
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center),
                                decoration: BoxDecoration(
                                    color: Color(0x99CCFFFF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                              )
                        // style: ButtonStyle(
                        //     backgroundColor: MaterialStateProperty.all<Color>(
                        //         item.isSubscribe
                        //             ? Colors.grey
                        //             : Color(0x99CCFFFF)),
                        //     shape: MaterialStateProperty.all(
                        //         RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.all(
                        //                 Radius.circular(12)))))
                        ),
                  ),
                )
              ],
            ))),
        Padding(
          padding: EdgeInsets.only(top: 6),
          child: ExpandedText(
            expandText: '查看全文',
            text: item.content,
            style: AppTheme.title.copyWith(fontWeight: FontWeight.w500),
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
