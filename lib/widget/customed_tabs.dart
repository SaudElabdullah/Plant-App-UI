import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants/constants.dart';
import 'package:plant_app_ui/theme/app_colors.dart';
import 'package:plant_app_ui/utils/size_config.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
class CustomTabs extends StatefulWidget {
  const CustomTabs({Key? key}) : super(key: key);

  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SizeConfig.heightMultiplier! * 2,
      right: Constant.indentation + 70,
      left: Constant.indentation - 30,
      bottom: Constant.indentation,
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier! * 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  child: TabBar(
                    labelStyle: TextStyle(
                      fontSize: SizeConfig.textMultiplier! * 2,
                      fontWeight: FontWeight.w500,
                    ),
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                        text: 'About',
                      ),
                      Tab(
                        text: 'Tips',
                      ),
                      Tab(
                        text: 'Activity',
                      ),
                    ],
                    labelColor: AppColors.thirdColor,
                    indicator: DotIndicator(
                      color: AppColors.thirdColor,
                      distanceFromCenter: 15,
                      radius: 3,
                      paintingStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
