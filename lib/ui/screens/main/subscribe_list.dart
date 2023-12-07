import 'package:bank_app/ui/screens/main/hover.dart';
import 'package:bank_app/ui/screens/main/items/subscribe_item.dart';
import 'package:bank_app/ui/screens/model_data.dart';
import 'package:bank_app/ui/screens/subscribemodel.dart';
import 'package:bank_app/ui/theme/colors.dart';
import 'package:bank_app/ui/theme/paddings.dart';
import 'package:flutter/material.dart';



class SubscribeList extends StatelessWidget {
  const SubscribeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingAssets.subscribeItemHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: MockData.subscribeItems.map((item) {
            return Padding(
              padding: EdgeInsets.zero,
              child: HoverBuilder(
                foregroundColor: ColorAssets.chipContainer,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(PaddingAssets.mediumPadding),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: PaddingAssets.zeroPadding,
                  ),
                ),
                builder: (isHovered) {
                  return SubscribeItem(
                      subscribeModel: SubscribeModel(
                      title: item.title,
                      description: item.description,
                      costPerMonth: item.costPerMonth,
                      titleIcon: item.titleIcon,
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
