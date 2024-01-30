import 'package:auth_test/src/feature/auth/widgets/numbers_row.dart';
import 'package:auth_test/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const NumbersRowWidget(
              firstCircleColor: AppColors.orange,
              firstCircleContent: Text('1'),
              secondCircleColor: AppColors.gray,
            ),
            const SizedBox(height: 30),
            const Text(
              'Регистрация',
              style: TextStyles.headline,
            ),
            const SizedBox(height: 30),
            const Text(
              'Введите номер телефона\n для регистрации',
              style: TextStyles.subHeadline,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                Text(
                  'Номер телефона',
                  style: TextStyles.formLabel,
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                prefixText: '+7',
                prefixStyle: TextStyles.formPrefix,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColors.lightGray),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
