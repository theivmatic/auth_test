import 'package:flutter/material.dart';

abstract class AppColors {
  static const white = Colors.white;
  static const orange = Color.fromRGBO(255, 184, 0, 1);
  static const lightGray = Color.fromRGBO(217, 217, 217, 1);
  static const gray = Color.fromRGBO(236, 236, 236, 1);
  static const darkGrey = Color.fromRGBO(79, 79, 79, 1);
}

abstract class TextStyles {
  static const headline = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    color: AppColors.darkGrey,
  );
  static const subHeadline = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGrey,
  );
  static const formLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.darkGrey,
  );
  static const formPrefix = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGrey,
  );
}


