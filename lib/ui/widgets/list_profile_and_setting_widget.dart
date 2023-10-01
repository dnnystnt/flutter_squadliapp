import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class ListProfileAndSettingWidget extends StatelessWidget {
  final String title;
  final double widthh;

  const ListProfileAndSettingWidget(
      {super.key, required this.title, required this.widthh});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 28, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      SizedBox(width: widthh),
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_right.png',
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
          Container(
            margin: EdgeInsets.only(top: 14),
            child: Divider(
              color: kGreyDividerColor,
              height: 12,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
          ),
        ],
      ),
    );
  }
}
