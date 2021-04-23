import 'package:flutter/material.dart';
import 'package:flutter_tuan/pages/categoryPage.dart';
import 'package:flutter_tuan/widget/ExpandedText.dart';
import 'package:flutter_tuan/widget/tile_subscrib.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpandedText(
        text:
            '''在深秋一个秋高气爽的日子里，眺望着湘江碧水缓缓北流。我独自伫立在橘子洲头。看万千山峰全都变成了红色，一层层树林好像染过颜色一样，江水清澈澄碧，一艘艘大船乘风破浪，争先恐后。广阔的天空里鹰在矫健有力地飞，鱼在清澈的水里轻快地游着，万物都在秋光中争着过自由自在的生活。面对着无边无际的宇宙，（千万种思绪一齐涌上心头）我要问：这苍茫大地的盛衰兴废，由谁来决定主宰呢?回想过去，我和我的同学，经常携手结伴来到这里游玩。在一起商讨国家大事，那无数不平凡的岁月至今还萦绕在我的心头。同学们正值青春年少，风华正茂；大家踌躇满志，意气奔放，正强劲有力。评论国家大事，写出这些激浊扬清的文章，把当时那些军阀官僚看得如同粪土。可曾记得，那时我们在江水深急的地方游泳，那激起的浪花几乎挡住了疾驰而来的船?''',
        expandText: '展开',
        maxLines: 4,
        route: MaterialPageRoute(
          builder: (ctx){
            return CategoryPage();
          }
        ),
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
