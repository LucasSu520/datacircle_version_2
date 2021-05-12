import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tuan/app_theme.dart';
import 'package:flutter_tuan/model/activity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ActivityListView extends StatelessWidget {
  const ActivityListView(
      {Key key,
        this.activity,
        this.animationController,
        this.animation,
        this.callback})
      : super(key: key);

  final VoidCallback callback;
  final Activity activity;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: Transform(
              transform: Matrix4.translationValues(
                  0.0, 50 * (1.0 - animation.value), 0.0),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 8, bottom: 16),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    callback();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(16.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            offset: const Offset(4, 4),
                            blurRadius: 16,
                          )
                        ]),
                    child: ClipRRect(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(16.0)),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 2,
                                child: Image.asset(
                                  activity.imagePath,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                color:
                                AppTheme.buildLightTheme().backgroundColor,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16, top: 8, bottom: 8),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  activity.titleTxt,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 22,
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      activity.subTxt,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey
                                                            .withOpacity(0.8),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Icon(
                                                      FontAwesomeIcons.mapMarkedAlt,
                                                      size: 12,
                                                      color:
                                                      AppTheme.buildLightTheme()
                                                          .primaryColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        '${activity.dist.toStringAsFixed(1)} km to city',
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.grey
                                                              .withOpacity(0.8),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 4),
                                                    child: Row(children: <Widget>[
                                                      SmoothStarRating(
                                                        allowHalfRating: true,
                                                        starCount: 5,
                                                        rating: activity.rating,
                                                        size: 20,
                                                        color: AppTheme
                                                            .buildLightTheme()
                                                            .primaryColor,
                                                      ),
                                                      const SizedBox(width: 2),
                                                      Text(
                                                          '${activity.personNum}人'),
                                                      const SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text('时间：${activity.time}')
                                                    ])),
                                              ],
                                            ),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 16, top: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '${activity.group}组',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            activity.official ? '官方' : '',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w100,
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: Material(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  InkWell(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(32.0)),
                                    onTap: () {
                                      print('多多');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: AppTheme.buildLightTheme()
                                            .primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
