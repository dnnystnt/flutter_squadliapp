import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';

class MyAwardPage extends StatelessWidget {
  const MyAwardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Tambahkan Widget barWidget()
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
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Icon(Icons.chevron_left, color: kBlackColor),
                ),
                SizedBox(width: 105),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Award',
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

    // Bikin Widget contentWidget()
    Widget contentWidget() {
      return Container(
        margin: EdgeInsets.only(top: 160),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image_no_data_found.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'No Data Found',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            barWidget(),
            contentWidget(),
          ],
        ),
      ),
    );
  }
}
