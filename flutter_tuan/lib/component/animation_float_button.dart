import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class NotifierAnimation extends ChangeNotifier {
  ValueChanged stopValueChanged;
  void animationStartAndEnd(isStop) {
    stopValueChanged(isStop);
    notifyListeners();
  }
}

class AnimationFloatButton extends StatefulWidget {
  AnimationFloatButton({this.child});
  final Widget child;
  @override
  State<StatefulWidget> createState() => _AnimationFloatButtonState();
}

class _AnimationFloatButtonState extends State<AnimationFloatButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 240));
    _animation = Tween(begin: Offset(0, 0), end: Offset(0, 2.0))
        .animate(_animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      child: widget.child,
      position: _animation,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final counter = Provider.of<NotifierAnimation>(context);
    if (counter != null) {
      Provider.of<NotifierAnimation>(context, listen: false).stopValueChanged =
          ((v) {
        if (v) {
          //开始动画
          _animationController.forward();
        } else {
          //复位动画
          _animationController.reverse();
        }
      });
    }
  }
}
