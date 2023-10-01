import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/widgets/list_my_feedback_widget.dart';

class MyFeedbackPage extends StatelessWidget {
  const MyFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin widget barWidget()
    Widget barWidget() {
      return Container(
        width: double.infinity,
        height: 95,
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 20,
              offset: Offset(3, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 32),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Icon(Icons.chevron_left, color: kBlackColor),
                ),
                SizedBox(width: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Feedback',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    // Bikin Widget firstSection()
    Widget firstSection() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 16, right: 16),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_filter.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    // Bikin Widget secondSection()
    Widget secondSection() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            ListMyFeedbackWidget(
              imgURL: 'assets/image_feedback_01.png',
              title: 'Enthusiastic',
              description: 'Great Job on The Arthur Carmazzi \nWebsite',
              time: '2 days ago',
            ),
            ListMyFeedbackWidget(
              imgURL: 'assets/image_feedback_02.png',
              title: 'Productivity',
              description: 'Gamification Website Looks Great',
              time: '4 days ago',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            barWidget(),
            firstSection(),
            secondSection(),
          ],
        ),
      ),
    );
  }
}
