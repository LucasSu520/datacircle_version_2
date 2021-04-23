import 'package:flutter/material.dart';
import 'package:flutter_tuan/model/travel_hot_keyword_model.dart';

enum SearchBarType { home, normal, homeLight }

class SearchBar extends StatefulWidget {
  final bool enabled;
  final bool hideLeft;
  final bool isUserIcon;
  final bool rightIcon;
  final SearchBarType searchBarType;
  final String hint;
  final String defaultText;
  final void Function() leftButtonClick;
  final void Function() rightButtonClick;
  final void Function() speakClick;
  final void Function() inputBoxClick;
  final ValueChanged<String> onChanged;
  final List<HotKeyword> hintList;

  const SearchBar(
      {Key key,
      this.enabled = true,
      this.isUserIcon: false,
      this.rightIcon: false,
      this.hideLeft,
      this.searchBarType = SearchBarType.normal,
      this.hint,
      this.defaultText,
      this.leftButtonClick,
      this.rightButtonClick,
      this.speakClick,
      this.inputBoxClick,
      this.onChanged,
      this.hintList})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool showClear = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    if (widget.defaultText != null) {
      setState(() {
        _controller.text = widget.defaultText;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _genHomeSearch();
  }


  _genHomeSearch() {
    return Container(
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: _inputBox(),
        ),
      ]),
    );
  }

  _inputBox() {
    Color inputBoxColor = Colors.grey.shade200;
    return Container(
      height: 34,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
          color: inputBoxColor, borderRadius: BorderRadius.circular(17)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/sousuo.png',
            width: 17,
          ),
          Expanded(
              flex: 1,
              child: TextField(
                  controller: _controller,
                  onChanged: _onChanged,
                  autofocus: false,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),
                  //输入文本的样式
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(4, 0, 4,13),
                    border: InputBorder.none,
                    hintText: widget.hint??"",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ))),
          !showClear
              ? _wrapTap(
                  Image.asset(
                    'assets/yuyin.png',
                    width: 17,
                  ),
                  widget.speakClick)
              : _wrapTap(
                  Icon(
                    Icons.clear,
                    size: 22,
                    color: Colors.grey,
                  ), () {
                  setState(() {
                    _controller.clear();
                  });
                  _onChanged('');
                })
        ],
      ),
    );
  }

  _wrapTap(Widget child, void Function() callback) {
    return GestureDetector(
      onTap: () {
        if (callback != null) callback();
      },
      child: child,
    );
  }

  _onChanged(String text) {
    if (text.length > 0) {
      setState(() {
        showClear = true;
      });
    } else {
      setState(() {
        showClear = false;
      });
    }
    if (widget.onChanged != null) {
      widget.onChanged(text);
    }
  }

  // _homeFontColor() {
  //   return widget.searchBarType == SearchBarType.homeLight
  //       ? Colors.black54
  //       : Colors.white;
  // }

  rightIcon(String icon) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Image.asset(
        icon,
        height: 24,
        width: 24,
      ),
    );
  }
}
