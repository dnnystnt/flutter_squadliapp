import 'dart:async';

import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/pages/first_onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/first-onboarding');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundGreenColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 220,
              height: 220,
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_squadli.png',
                  ),
                ),
              ),
            ),
            Text(
              'SQUADLI',
              style: whiteTextStyle.copyWith(
                fontSize: 40,
                fontWeight: medium,
                letterSpacing: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
