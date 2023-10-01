import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/widgets/list_notification_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                SizedBox(width: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Notification',
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

    // Bikin Widget listNotification()
    Widget listNotification() {
      return Container(
        margin: EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Column(
          children: [
            ListNotificationWidget(
                imgURL: 'assets/image_member_01.png',
                title: 'Emotion Received',
                description: 'You got Emotion from Arthur \nCarmazzi',
                time: '2 Weeeks Ago'),
            Divider(
              color: kGreyDividerColor,
              height: 40,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/notification-detail');
              },
              child: ListNotificationWidget(
                  imgURL: 'assets/image_member_02.png',
                  title: 'Emotion Received',
                  description: 'You got Emotion from Mega \nYuliastuti',
                  time: '2 Weeeks Ago'),
            ),
            Divider(
              color: kGreyDividerColor,
              height: 40,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            ListNotificationWidget(
                imgURL: 'assets/image_member_02.png',
                title: 'Emotion Received',
                description: 'You got Emotion from Mega \nYuliastuti',
                time: '2 Weeeks Ago'),
          ],
        ),
      );
    }

    return Scaffold(
      // appBar: AppBar(
      //   leading: InkWell(
      //     onTap: () {
      //       Navigator.pushNamed(context, '/home');
      //     },
      //     child: Icon(Icons.chevron_left, color: kBlackColor),
      //   ),
      //   backgroundColor: kBackgroundWhiteColor,
      //   elevation: 0,
      //   title: Text(''),
      // ),
      body: SafeArea(
        child: ListView(
          children: [
            barWidget(),
            listNotification(),
          ],
        ),
      ),
    );
  }
}
