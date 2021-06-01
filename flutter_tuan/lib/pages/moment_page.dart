import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/component/animation_float_button.dart';
import 'package:flutter_tuan/component/moment_list.dart';

import 'package:flutter_tuan/component/search_bar.dart';
import 'package:flutter_tuan/constants/constant.dart';
import 'package:flutter_tuan/constants/radius_size_constant.dart';

import '../main.dart';
import 'cat_page.dart';
import 'moment_list_page.dart';

class MomentsPage extends StatefulWidget {
  @override
  _MomentsPageState createState() => _MomentsPageState();
}

class _MomentsPageState extends State<MomentsPage> {
  // double borderWidth = !MomentList.momentScrollController.hasClients
  //     ? 0
  //     : MomentList.momentScrollController.offset == 0
  //         ? 0
  //         : 1.0;
  @override
  void initState() {
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        // color: Colors.white,
        child: Column(
          children: [
            Container(
              decoration: ShapeDecoration(
                  shape: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black12,
                          width: 1.0,
                          // style: !MomentList.momentScrollController.hasClients
                          //     ? BorderStyle.none
                          //     : MomentList.momentScrollController.offset == 0
                          //         ? BorderStyle.none
                          //         : BorderStyle.solid
                   ))),
              child: Padding(
                padding: kDefaultTabBarPadding.copyWith(top: 13, bottom: 5),
                child: Row(children: [
                  (Expanded(
                      child: SearchBar(
                    hint: DEFAULT_TEXT,
                  ))),
                  SizedBox(
                    width: 8,
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      MyApp.scaffoldKey.currentState.openDrawer();
                    },
                    child: CircleAvatar(
                      radius: RadiusSizeConstants.circleAvatarSize,
                      backgroundImage: AssetImage('images/duoduo.jpg'),
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
                child: Padding(
              padding: kDefaultTabViewPadding.copyWith(left: 21, right: 16),
              child: MomentListPage(),
            ))
          ],
        ),
      ),
      floatingActionButton: AnimationFloatButton(
        child: Container(
          width: 50,
          height: 50,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: IconSize.large_34,
          ),
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(RadiusSizeConstants.floatButtonSize),
              color: Theme.of(context).colorScheme.secondary),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
