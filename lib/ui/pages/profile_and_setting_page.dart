import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/widgets/list_profile_and_setting_widget.dart';

class ProfileAndSettingPage extends StatelessWidget {
  const ProfileAndSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin barWidget()
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
                SizedBox(width: 80),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Profile and Setting',
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
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Hello,',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
            Text(
              'Denny Sutanto',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    // Bikin Widget secondSection()
    Widget secondSection() {
      return Container(
        child: Column(
          children: [
            ListProfileAndSettingWidget(title: 'Profile Name', widthh: 200),
            ListProfileAndSettingWidget(title: 'Change Password', widthh: 160),
            ListProfileAndSettingWidget(title: 'Change Position', widthh: 170),
            ListProfileAndSettingWidget(
                title: 'Change/Upload Profile Image', widthh: 75),
            ListProfileAndSettingWidget(title: 'Help', widthh: 250),
            ListProfileAndSettingWidget(title: 'About', widthh: 240),
            ListProfileAndSettingWidget(title: 'Logout', widthh: 230),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          barWidget(),
          firstSection(),
          secondSection(),
        ],
      )),
    );
  }
}
