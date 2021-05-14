import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_tuan/component/square_swiper_pagination.dart';
import 'package:flutter_tuan/model/cat_banner_model.dart';

class CatPageBanner extends StatelessWidget {
  const CatPageBanner({
    Key key,
    @required CatBannerListModel catBannerListModel,
  }) : _catBannerListModel = catBannerListModel, super(key: key);

  final CatBannerListModel _catBannerListModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Swiper(
        itemCount: 3,
        autoplay: true,
        autoplayDelay: 8000,
        pagination: SwiperPagination(
            builder: SquareSwiperPagination(
                size: 10,
                activeSize: 6,
                color: Colors.white.withAlpha(80),
                activeColor: Colors.white)),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              //TODO navigator to the activity detail page
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage(this._catBannerListModel.data[index].image),
                      fit: BoxFit.cover)),
            ),
          );
        },
      ),
    );
  }
}