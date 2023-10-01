import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/widgets/list_checkbox_widget.dart';
import 'package:squadliapp/ui/widgets/list_member_card_widget.dart';

class MemberPage extends StatelessWidget {
  const MemberPage({
    super.key,
  });

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
                SizedBox(width: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Members',
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

    // Bikin Widget searchInput()
    Widget searchInput() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 16, right: 16),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 600,
                          child: Center(
                            child: Container(
                              margin:
                                  EdgeInsets.only(top: 24, left: 12, right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Type Team',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListCheckboxWidget(
                                          imgURL: 'assets/checkbox_01.png',
                                          title: 'Team Leader'),
                                      SizedBox(height: 12),
                                      ListCheckboxWidget(
                                          imgURL: 'assets/checkbox_02.png',
                                          title: 'Team Member'),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Text(
                                        'Teams',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListCheckboxWidget(
                                          imgURL: 'assets/checkbox_02.png',
                                          title: 'Arthur New Team'),
                                      SizedBox(height: 12),
                                      ListCheckboxWidget(
                                          imgURL: 'assets/checkbox_02.png',
                                          title: 'Marketing New Team'),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Text(
                                        'Rank',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 14,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListCheckboxWidget(
                                          imgURL: 'assets/checkbox_02.png',
                                          title: 'Overall Rank'),
                                      SizedBox(height: 12),
                                      ListCheckboxWidget(
                                          imgURL: 'assets/checkbox_02.png',
                                          title: 'Current Rank'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_filter.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: kGreyColor),
                hintText: 'Search by name or email...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Bikin Widget memberCard()
    Widget memberCard() {
      return Column(
        children: [
          ListMemberCard(
            imgURL: 'assets/image_member_01.png',
            name: 'Arthur Carmazzi',
            email: 'arthur@directivecommunication.com',
            job: 'Founder & Team Leader',
          ),
          ListMemberCard(
              imgURL: 'assets/image_member_02.png',
              name: 'Mega Yuliastuti',
              email: 'mega@directivecommunication.com',
              job: 'Sales Leader'),
          ListMemberCard(
              imgURL: 'assets/image_member_02.png',
              name: 'Mega Yuliastuti',
              email: 'mega@directivecommunication.com',
              job: 'Sales Leader'),
          Divider(
            color: kGreyDividerColor,
            height: 25,
            thickness: 2,
            indent: 5,
            endIndent: 5,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            barWidget(),
            searchInput(),
            memberCard(),
          ],
        ),
      ),
    );
  }
}
