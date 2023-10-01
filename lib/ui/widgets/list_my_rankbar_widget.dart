import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class ListMyRankbarWidget extends StatelessWidget {
  final String imgURL;
  final String title;
  final String description;
  final String time;

  const ListMyRankbarWidget({
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
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imgURL,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(width: 32),
            Expanded(
              child: Text(
                time,
                style: greyTextStyle.copyWith(
                  fontSize: 8,
                  fontWeight: medium,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Divider(
          color: kGreyDividerColor,
          height: 40,
          thickness: 2,
          indent: 3,
          endIndent: 3,
        ),
      ],
    );
  }
}
