import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Duration duration = const Duration(seconds: 5);
    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('homepage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Exchange Currency Rates",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              inherit: false,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.currency_pound_outlined,
                color: Colors.white,
                size: 100,
              ),
              Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                Icons.currency_rupee_outlined,
                color: Colors.white,
                size: 100,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.currency_yen,
                color: Colors.white,
                size: 100,
              ),
              Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                Icons.currency_lira_sharp,
                color: Colors.white,
                size: 100,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const CircularProgressIndicator(
            color: Colors.black,
            backgroundColor: Colors.white,
            strokeWidth: 40,
          ),
        ],
      ),
    );
  }
}
