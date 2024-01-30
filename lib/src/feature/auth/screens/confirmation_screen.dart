import 'package:auth_test/src/feature/auth/widgets/numbers_row.dart';
import 'package:auth_test/theme.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.darkGrey,
          ),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      backgroundColor: AppColors.white,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              NumbersRowWidget(
                firstCircleColor: AppColors.orange,
                firstCircleContent: Text('1'),
                secondCircleColor: AppColors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
