import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/widgets/rectangle_homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
          left: 16,
          right: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile-and-setting');
                  },
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_menuburger.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/notification');
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_notification.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Bikin Widget Profile Card
    Widget profileCard() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/bpn');
        },
        child: Container(
          width: 260,
          height: 294,
          margin: EdgeInsets.only(right: 16, left: 16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/image_card_no_shadows.png',
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.25),
                blurRadius: 70,
                offset: Offset(0, 12),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 48),
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
                ],
              ),
              SizedBox(height: 14),
              Column(
                children: [
                  Text(
                    'Denny Sutanto',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Web Designer | UI/UX Designer',
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '2',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Behaviour \nCreated',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '24',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Positive \nEmotion',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '4',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Negative \nEmotion',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    // Bikin Widget Four Rectangle nya
    Widget fourRectangle() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/member');
                    },
                    child: RectangleHomepage(
                        imgURL: 'assets/icon_members.png', title: 'Members'),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/my-feedback');
                    },
                    child: RectangleHomepage(
                        imgURL: 'assets/icon_feedback.png', title: 'Feedback'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/my-rank');
                    },
                    child: RectangleHomepage(
                        imgURL: 'assets/icon_ranks.png', title: 'My Ranks'),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/my-award');
                    },
                    child: RectangleHomepage(
                        imgURL: 'assets/icon_awards.png', title: 'My Awards'),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            header(),
            profileCard(),
            fourRectangle(),
          ],
        ),
      ),
    );
  }
}
