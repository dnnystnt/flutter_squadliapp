import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget barWidget()
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
                    Navigator.pushNamed(context, '/notification');
                  },
                  child: Icon(Icons.chevron_left, color: kBlackColor),
                ),
                SizedBox(width: 80),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Notification Detail',
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

    // Bikin Widget detailContent()
    Widget detailContent() {
      // Bikin Sub Widget firstRow()
      Widget firstRow() {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Emotion Number',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(width: 118),
                  Text(
                    'EM-1234/10-06-03',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    'Date & Time Posted',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(width: 86),
                  Text(
                    '12 July 2023 | 11:57 PM',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
              // Divider(
              //   color: kGreyDividerColor,
              //   height: 32,
              //   thickness: 2,
              //   indent: 2,
              //   endIndent: 2,
              // ),
            ],
          ),
        );
      }

      // Bikin Widget secondRow()
      Widget secondRow() {
        return Container(
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 14),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: kBackgroundGreenColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        'How was the Emotion?',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/image_awaken_plus_03.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

      // Bikin Widget thirdRow()
      Widget thirdRow() {
        return Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 14),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 4),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_member_02.png',
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mega Yuliastuti',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Member Team',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }

      // Bikin Widget fourthRow()
      Widget fourthRow() {
        return Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Comment',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Description between the Gives Lorem Ipsum \nDolor Sit Amet Consectetur Adipiscing Elit \nNunca. Le Des cription between the Gives',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        );
      }

      return Container(
        child: Column(
          children: [
            firstRow(),
            Divider(
              color: kGreyDividerColor,
              height: 8,
              thickness: 2,
              indent: 2,
              endIndent: 2,
            ),
            secondRow(),
            Divider(
              color: kGreyDividerColor,
              height: 10,
              thickness: 2,
              indent: 2,
              endIndent: 2,
            ),
            thirdRow(),
            Divider(
              color: kGreyDividerColor,
              height: 32,
              thickness: 2,
              indent: 2,
              endIndent: 2,
            ),
            fourthRow(),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            barWidget(),
            detailContent(),
          ],
        ),
      ),
    );
  }
}
