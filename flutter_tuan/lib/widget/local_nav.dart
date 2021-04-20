import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/common_model.dart';

class LocalNav extends StatelessWidget {
  final List<CommonModel> localNavList;
  final String title;
  LocalNav({Key key, @required this.localNavList, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      nav_title(title: this.title),
     Container(height: 120,child: _items(context),
      )
    ]);
  }

  _items(BuildContext context) {
    if (localNavList == null) return null;
    List<Widget> items = [];
    localNavList.forEach((model) {
      items.add(_item(context, model));
    });
    return ListView(
      children: items,
      scrollDirection: Axis.horizontal,
      controller: new ScrollController(),
    );
  }

  _item(BuildContext context, CommonModel model) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: AssetImage(model.image),fit: BoxFit.cover),
            ),

          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
          model.isOfficial
              ? Container(
                  height: 15,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Text('官方',style: TextStyle(fontSize: 8),),
                )
              : Container()
        ],
      ),
    );
  }
}

class nav_title extends StatelessWidget {
  const nav_title({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 15,
            left: 5,
            child: Text(
              this.title,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
            top: 22,
            right: 15,
            child: Text(
              '查看更多',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 12),
            ),
          )
        ],
      ), // _items(context)
    );
  }
}
