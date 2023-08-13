import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/utils/global.colors.dart';

import 'login.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Get.to(() => const LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: GlobalColors.mainColor,
            child: Image.asset(
              'assets/logo.jpg',
              height: 187,
              width: 187,
              colorBlendMode: BlendMode.clear,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'HealHub Diabetics Management System',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
