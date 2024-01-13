import 'package:flutter/material.dart';

class CustomEndDrawerAnimation extends StatelessWidget {
  final Widget drawer;
  final double endDrawerWidth;

  const CustomEndDrawerAnimation({
    super.key,
    required this.drawer,
    this.endDrawerWidth = 280.0, // Customize the width as needed
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: ModalRoute.of(context)!.animation!,
            curve: Curves.easeInOut,
          ),
        ),
        child: SizedBox(
          width: endDrawerWidth,
          height: MediaQuery.of(context).size.height,
          child: drawer,
        ),
      ),
    );
  }
}
