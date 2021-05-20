import 'package:flutter_tuan/model/moment_model.dart';

getMomentData() {
  List<MomentItemModel> list = <MomentItemModel>[
    MomentItemModel(
        avatar: 'images/duoduo.jpg',
        name: '黄忆慈',
        time: '刚刚',
        content: '多多自己做的戒指 真好看💍 ',
        pict: 'images/ring3.jpg',
        isSubscribe: true),
    MomentItemModel(
        avatar: 'images/ouyangnana.jpg',
        name: '歐陽娜娜Nana',
        time: '5-16',
        content: '夏天的風🍓&💛 ',
        pict: 'images/nana.jpg',
        isSubscribe: true),
    MomentItemModel(
      avatar: 'images/OeckCEO.jpg',
      name: '欧意CEOJayHao',
      time: '5小时前',
      content:
          '杰伦的团队一直努力践行高效产出，减少内卷的工作准则，寻找最适合的工具与制度来提高工作效率，做好目标管理，创造有效的沟通机会与氛围。促进绩效增长不能仅靠加班，健康，还是要做到知行合一',
      pict: 'images/chat.jpg',
      isSubscribe: false,
    ),
    MomentItemModel(
        avatar: 'images/huangTouXiang.jpg',
        name: '黄磊微博',
        time: '昨天 14:37',
        content:
            '''因为疫情我们暂停了一年，去年10月底我们所有人都觉得心里空落落的，好像少了点什么，还有在国外的戏剧界朋友写邮件来给赖老师说，这些年都已经习惯了每一年的秋天都是在乌镇度过。是的，去年的秋天我们没有在乌镇相逢，赖老师的生日是10月底，去年也没有吃上一碗乌镇的长寿面，但是，可是，终于，乌镇戏剧节回来了！
      我们即将重逢于金秋的10月15日—24日！
    继续造一场乌镇大梦！
    今年的主题为“茂”，丰富而非繁复，野生而又丛生，
    茂士即才士，茂年即盛年，
    以戏剧之名，一起丰茂。
    今日起，正式开启青年竞演与古镇嘉年华的报名通道！
    可登陆官网www.wuzhenfestival.com下载报名简章。
    第八届乌镇戏剧节回归青年竞演报名启动''',
        pict: 'images/picOne.jpg',
        isSubscribe: true),
    MomentItemModel(
      avatar: 'images/OeckCEO.jpg',
      name: '欧意CEOJayHao',
      time: '5小时前',
      content:
          '杰伦的团队一直努力践行高效产出，减少内卷的工作准则，寻找最适合的工具与制度来提高工作效率，做好目标管理，创造有效的沟通机会与氛围。促进绩效增长不能仅靠加班，健康，还是要做到知行合一',
      pict: 'images/chat.jpg',
      isSubscribe: false,
    ),
  ];
  return list;
}
