import 'package:auth_test/src/feature/auth/widgets/numbers_row.dart';
import 'package:flutter/material.dart';

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
            //TODO: вывести цвет в переменные
            color: Color.fromRGBO(79, 79, 79, 1),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: Column(
          children: [
            NumbersRowWidget(
              firstCircleColor: Color.fromRGBO(255, 184, 0, 1),
              firstCircleContent: Text('1'),
              secondCircleColor: Color.fromRGBO(236, 236, 236, 1),
            ),
          ],
        ),
      ),
    );
  }
}
