import 'package:bank_app/ui/screens/main/chip.dart';
import 'package:bank_app/ui/screens/main/subscribe_list.dart';
import 'package:bank_app/ui/screens/main/tarif_and_limits.dart';
import 'package:bank_app/ui/screens/main/title_selection.dart';
import 'package:flutter/cupertino.dart';

import '../../theme/colors.dart';
import '../../theme/paddings.dart';
import '../../theme/strings.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorAssets.containerColor,
        // padding: EdgeInsets.all(PaddingAssets.mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: PaddingAssets.titlePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.subscriptionTitle,
                subTitle: StringAssets.subscriptionsTitle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.normalPadding,
                  right: PaddingAssets.smallPadding),
              child: const SubscribeList(),
            ),
            SizedBox(height: PaddingAssets.largePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.limitsAndSubscriptionsTitle,
                subTitle: StringAssets.onlySberTitle,
              ),
            ),
            TariffsAndLimits(),
            SizedBox(height: PaddingAssets.largePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.interestTitle,
                subTitle: StringAssets.historyCaption,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: PaddingAssets.mediumPadding,
                right: PaddingAssets.mediumPadding,
              ),
              child: const TagsBlock(),
            ),
            SizedBox(height: PaddingAssets.bottomPadding),
          ],
        ),
      ),
    );
  }
}