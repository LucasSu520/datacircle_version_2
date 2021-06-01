import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/my_activity_model.dart';

class AllActivityDetail extends StatelessWidget {
  const AllActivityDetail(this.item);
  final MyActivityItemModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 6, bottom: 16),
        child: InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            //TODO navigator to the detail page
          },
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(16)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: Offset(4, 4),
                    blurRadius: 18),
              ],
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8, top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: AssetImage(item.originator.avatar),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            height: 32,
                            child: Text(
                              item.originator.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image: AssetImage(item.imageUrl),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              child: Text(item.title,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              alignment: Alignment.centerLeft,
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 10),
                        child: Container(
                          child: Text(
                            '报名时间：' + item.time,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          alignment: Alignment.centerLeft,
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 8, bottom: 8),
                      child: Stack(
                        children: [
                          Align(
                            child: GestureDetector(
                              child: Container(
                                child: Text('查看详情'),
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                            alignment: Alignment(0.3, 1),
                          ),
                          Align(
                            child: GestureDetector(
                              child: Container(
                                child: Text('评价'),
                                height: 30,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.8))),
                              ),
                            ),
                            alignment: Alignment(0.9, 1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 6,
                  right: 10,
                  child: Text(
                    item.finished ? '已完成' : '',
                    style: TextStyle(color: Colors.grey.withOpacity(0.9)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
