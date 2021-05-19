import 'package:flutter/material.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/model/moment_recentview_model.dart';

class MomentRecentViewItem extends StatelessWidget {
  MomentRecentViewItem({this.item});
  final MomentRecentViewItemModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(RadiusSizeConstants.large)),
              image: DecorationImage(
                  image: AssetImage(item.pict), fit: BoxFit.cover)),
        ),
        Text(item.name),
      ],
    );
  }
}
