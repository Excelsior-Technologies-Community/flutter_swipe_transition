import 'package:flutter/material.dart';

import '../../direction_model/direction_model.dart';

class SwipeTransitionRoute<T> extends PageRouteBuilder<T> {
  final Widget page;
  final SwipeDirection direction;
  final Duration duration;
  final Curve curve;

  SwipeTransitionRoute({
    required this.page,
    this.direction = SwipeDirection.rightToLeft,
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.easeInOut,
  }) : super(
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         pageBuilder: (context, animation, secondaryAnimation) => page,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           Offset begin;

           switch (direction) {
             case SwipeDirection.leftToRight:
               begin = const Offset(-1, 0);
               break;
             case SwipeDirection.rightToLeft:
               begin = const Offset(1, 0);
               break;
             case SwipeDirection.topToBottom:
               begin = const Offset(0, -1);
               break;
             case SwipeDirection.bottomToTop:
               begin = const Offset(0, 1);
               break;
           }

           final tween = Tween(
             begin: begin,
             end: Offset.zero,
           ).chain(CurveTween(curve: curve));

           return SlideTransition(
             position: animation.drive(tween),
             child: child,
           );
         },
       );
}
