import 'package:flutter/material.dart';
import 'package:squadliapp/shared/theme.dart';
import 'package:squadliapp/ui/widgets/list_member_card_widget.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Tambahkan Widget searchInput()
    Widget searchInput() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
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
                Container(
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

    // Tambahkan Widget memberCard()
    Widget memberCard() {
      return Column(
        children: [
          ListMemberCard(
              imgURL: 'assets/image_member_01.png',
              name: 'Arthur Carmazzi',
              email: 'arthur@directivecommunication.com',
              job: 'Founder & Team Leader'),
          ListMemberCard(
              imgURL: 'assets/image_member_02.png',
              name: 'Mega Yuliastuti',
              email: 'mega@directivecommunication.com',
              job: 'Sales Leader'),
          ListMemberCard(
              imgURL: 'assets/image_member_03.png',
              name: 'Support Dci',
              email: 'Support@directivecommunication.com',
              job: 'Admin Support'),
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
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          searchInput(),
          memberCard(),
        ],
      )),
    );
  }
}
