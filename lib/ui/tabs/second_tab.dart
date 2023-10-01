import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      child: Center(
        child: Text('2nd Tab'),
      ),
    );
  }
}
