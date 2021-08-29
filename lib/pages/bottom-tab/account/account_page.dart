import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/user_profile_account_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/user_profile_basic_info_widget.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserProfileAccountWidget(),
            UserBasicInformationWidget(),

          ],
        ),
      );
    });
  }
}
