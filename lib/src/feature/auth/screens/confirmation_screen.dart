import 'package:auth_test/src/feature/auth/widgets/confirmation_cell.dart';
import 'package:auth_test/src/feature/auth/widgets/numbers_row.dart';
import 'package:auth_test/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              NumbersRowWidget(
                firstCircleColor: AppColors.white,
                firstCircleContent: const Icon(
                  Icons.done,
                  color: AppColors.green,
                ),
                firstCircleBorder: Border.all(
                  color: AppColors.green,
                ),
                secondCircleColor: AppColors.orange,
              ),
              const SizedBox(height: 30),
              const Text(
                'Подтверждение',
                style: TextStyles.headline,
              ),
              const SizedBox(height: 30),
              const Text(
                'Введите код, который мы отправили\n в SMS на +7(966) 666 66 66',
                style: TextStyles.subHeadline,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              const Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConfirmationCellWidget(),
                    ConfirmationCellWidget(),
                    ConfirmationCellWidget(),
                    ConfirmationCellWidget(),
                    ConfirmationCellWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Отправить код еще раз',
                  style: TextStyles.textButtonText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
