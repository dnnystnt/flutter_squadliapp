import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/tabs/first_tab.dart';
import 'package:squadliapp/ui/tabs/second_tab.dart';
import 'package:squadliapp/ui/tabs/third_tab.dart';

class BehaviorPositiveNegative extends StatelessWidget {
  const BehaviorPositiveNegative({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Icon(Icons.chevron_left, color: kBlackColor),
          ),
          backgroundColor: kBackgroundWhiteColor,
          elevation: 0,
          title: Text(''),
        ),
        body: Column(
          children: [
            TabBar(
              labelPadding: EdgeInsets.symmetric(vertical: 8),
              indicatorColor: kPrimaryColor,
              labelColor: kBlackColor,
              unselectedLabelColor: kGreyColor,
              tabs: [
                Tab(
                  child: Text(
                    'Behaviour',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Positive Emotion',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Negative Emotion',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




/*
MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Icon(Icons.arrow_back, color: kBlackColor),
            ),
            backgroundColor: kWhiteColor,
            elevation: 0,
            bottom: TabBar(
              dividerColor: kBlackColor,
              tabs: [
                Tab(text: 'Text 1'),
                Tab(text: 'Text 2'),
                Tab(text: 'Text 3'),
              ],
            ),
          ),
        ),
      ),
    );











 */