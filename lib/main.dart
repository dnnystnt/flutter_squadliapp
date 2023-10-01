import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/pages/behavior_positive_negative_page.dart';
import 'package:squadliapp/ui/pages/first_onboarding_page.dart';
import 'package:squadliapp/ui/pages/home_page.dart';
import 'package:squadliapp/ui/pages/member_page.dart';
import 'package:squadliapp/ui/pages/my_award_page.dart';
import 'package:squadliapp/ui/pages/my_feedback_page.dart';
import 'package:squadliapp/ui/pages/my_rank_page.dart';
import 'package:squadliapp/ui/pages/notification_detail_page.dart';
import 'package:squadliapp/ui/pages/notification_page.dart';
import 'package:squadliapp/ui/pages/profile_and_setting_page.dart';
import 'package:squadliapp/ui/pages/second_onboarding_page.dart';
import 'package:squadliapp/ui/pages/splash_page.dart';
import 'package:squadliapp/ui/pages/third_onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: SplashPage(),
        // theme: ThemeData(primarySwatch: Colors.green),
        routes: {
          '/': (context) => SplashPage(),
          '/first-onboarding': (context) => FirstOnboading(),
          '/second-onboarding': (context) => SecondOnboading(),
          '/third-onboarding': (context) => ThirdOnboading(),
          '/home': (context) => HomePage(),
          '/bpn': (context) => BehaviorPositiveNegative(),
          '/notification': (context) => NotificationPage(),
          '/notification-detail': (context) => NotificationDetailPage(),
          '/member': (context) => MemberPage(),
          '/my-award': (context) => MyAwardPage(),
          '/profile-and-setting': (context) => ProfileAndSettingPage(),
          '/my-feedback': (context) => MyFeedbackPage(),
          '/my-rank': (context) => MyRankPage(),
        });
  }
}

// LANJUT DARI Slicing Get Started 00:00
