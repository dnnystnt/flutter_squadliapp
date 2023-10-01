import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class ListNotificationWidget extends StatelessWidget {
  final String imgURL;
  final String title;
  final String description;
  final String time;

  const ListNotificationWidget({
    super.key,
    required this.imgURL,
    required this.title,
    required this.description,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  description,
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
              ],
            ),
            SizedBox(width: 40),
            Expanded(
              child: Text(
                time,
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
