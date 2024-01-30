import 'package:auth_test/theme.dart';
import 'package:flutter/material.dart';

class NumbersRowWidget extends StatelessWidget {
  final Color firstCircleColor;
  final dynamic firstCircleContent;
  final Color secondCircleColor;

  const NumbersRowWidget({
    super.key,
    required this.firstCircleColor,
    required this.firstCircleContent,
    required this.secondCircleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
              //TODO: вывести цвет в переменные
              color: firstCircleColor,
              shape: BoxShape.circle),
          child: Center(
            child: firstCircleContent,
          ),
        ),
        Container(
          width: 44,
          height: 1,
          decoration: const BoxDecoration(
            color: AppColors.gray,
          ),
        ),
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
              //TODO: вывести цвет в переменные
              color: secondCircleColor,
              shape: BoxShape.circle),
          child: const Center(
            child: Text('2'),
          ),
        ),
        Container(
          width: 44,
          height: 1,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(236, 236, 236, 1),
          ),
        ),
        Container(
          width: 36,
          height: 36,
          decoration: const BoxDecoration(
              //TODO: вывести цвет в переменные
              color: Color.fromRGBO(236, 236, 236, 1),
              shape: BoxShape.circle),
          child: const Center(
            child: Text('3'),
          ),
        ),
      ],
    );
  }
}
