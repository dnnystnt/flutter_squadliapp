import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class ListMemberCard extends StatelessWidget {
  final String imgURL;
  final String name;
  final String email;
  final String job;

  const ListMemberCard({
    super.key,
    required this.imgURL,
    required this.name,
    required this.email,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: kGreyyColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(3, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/vertical_line.png',
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Container(
              width: 54,
              height: 54,
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
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  email,
                  style: greyTextStyle.copyWith(
                    fontSize: 8,
                    fontWeight: regular,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  job,
                  style: greyTextStyle.copyWith(
                    fontSize: 8,
                    fontWeight: regular,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(width: 40),
            Expanded(
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_right.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
