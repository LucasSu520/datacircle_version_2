import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class CustomPhysics extends ScrollPhysics {
  const CustomPhysics({ScrollPhysics parent}) : super(parent: parent);

  @override
  CustomPhysics applyTo(ScrollPhysics ancestor) {
    return CustomPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring {
    return SpringDescription(mass: 90, stiffness: 150, damping: 0.8);
  }
}