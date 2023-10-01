import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class ListCheckboxWidget extends StatelessWidget {
  final String imgURL;
  final String title;

  const ListCheckboxWidget({
    super.key,
    required this.imgURL,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgURL,
              ),
            ),
          ),
        ),
        SizedBox(width: 12),
        Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 14,
            fontWeight: regular,
          ),
        ),
      ],
    );
  }
}
