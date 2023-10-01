import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class SecondOnboading extends StatelessWidget {
  const SecondOnboading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 360,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
              color: kBackgroundGreenColor,
            ),
          ),
          Column(
            children: [
              Center(
                child: Container(
                  width: 240,
                  height: 240,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image_get_started_02.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 120),
              Text(
                'Onboarding Screen Title 02',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Description between the Gives Lorem Ipsum \nDolor Sit Amet Consectetur Adipiscing \nElit Nunca',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Skip',
                      style: greenTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/onboarding_screen_bar_02.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 32),
                  Container(
                    width: 130,
                    height: 52,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/third-onboarding');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
