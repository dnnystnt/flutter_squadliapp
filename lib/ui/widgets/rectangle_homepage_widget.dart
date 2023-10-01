import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class RectangleHomepage extends StatelessWidget {
  final String imgURL;
  final String title;

  const RectangleHomepage(
      {super.key, required this.imgURL, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kRectangleColor,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        imgURL,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
