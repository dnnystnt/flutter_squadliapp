import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/widgets/list_my_rankbar_widget.dart';

class MyRankPage extends StatelessWidget {
  const MyRankPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget barWidget()
    Widget barWidget() {
      return Container(
        width: double.infinity,
        height: 95,
        decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 20,
            offset: Offset(3, 3),
          ),
        ]),
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
                SizedBox(width: 110),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Ranks',
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
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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

    // Bikin Widget secondSection(),
    Widget secondSection() {
      // Bikin Widget titleBar()
      Widget titleBar() {
        return Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top 3 Emotions',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ],
        );
      }

      // Bikin Widget listrankBar()
      Widget listrankBar() {
        return Container(
          margin: EdgeInsets.only(left: 2, right: 2),
          child: Column(
            children: [
              ListMyRankbarWidget(
                  imgURL: 'assets/image_feedback_01.png',
                  title: 'Enthusiastic',
                  description: 'Great Job on The Arthur Carmazzi \nWebsite',
                  time: '2 Weeks Ago'),
              ListMyRankbarWidget(
                  imgURL: 'assets/image_feedback_01.png',
                  title: 'Enthusiastic',
                  description: 'Great Job on The Arthur Carmazzi \nWebsite',
                  time: '2 Weeks Ago'),
              ListMyRankbarWidget(
                  imgURL: 'assets/image_feedback_01.png',
                  title: 'Enthusiastic',
                  description: 'Great Job on The Arthur Carmazzi \nWebsite',
                  time: '2 Weeks Ago'),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            titleBar(),
            Divider(
              color: kGreyDividerColor,
              height: 40,
              thickness: 0.5,
              indent: 3,
              endIndent: 3,
            ),
            listrankBar(),
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
