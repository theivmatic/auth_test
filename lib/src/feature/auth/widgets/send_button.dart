import 'package:auth_test/src/core/routes/app_router.gr.dart';
import 'package:auth_test/theme.dart';
import 'package:auto_route/auto_route.dart';
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
        onPressed: () {
          context.pushRoute(const ConfirmationRoute());
        },
        style: ButtonStyle(
          fixedSize: const MaterialStatePropertyAll(
            Size(285, 53),
          ),
          shape: MaterialStatePropertyAll<OutlinedBorder?>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.buttonGrey,
          ),
        ),
        child: const Text(
          'Отправить смс-код',
          style: TextStyles.buttonText,
        ),
      );
    } else {
      return FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          fixedSize: const MaterialStatePropertyAll(
            Size(285, 53),
          ),
          shape: MaterialStatePropertyAll<OutlinedBorder?>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.orange,
          ),
        ),
        child: const Text(
          'Отправить смс-код',
          style: TextStyles.buttonText,
        ),
      );
    }
  }
}
