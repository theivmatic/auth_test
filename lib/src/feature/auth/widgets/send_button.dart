import 'package:auth_test/theme.dart';
import 'package:flutter/material.dart';

class SendButtonWidget extends StatelessWidget {
  final bool isEnabled;

  const SendButtonWidget({
    super.key,
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    if (isEnabled == false) {
      return FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStatePropertyAll<OutlinedBorder?>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.buttonGrey,
          ),
        ),
        child: const Text('Отправить смс-код'),
      );
    } else {
      return FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStatePropertyAll<OutlinedBorder?>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.orange,
          ),
        ),
        child: const Text('Отправить смс-код'),
      );
    }
  }
}
