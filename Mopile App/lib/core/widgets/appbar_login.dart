import 'package:flutter/material.dart';
import '../../constants.dart';

AppBar loginScreenAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: SizedBox(
      width: 100,
      child: Image.asset(AssetsData.logoImage),
    ),
  );
}
