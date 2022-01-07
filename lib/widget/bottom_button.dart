import 'package:flutter/material.dart';
import 'package:plant_app_ui/theme/app_colors.dart';
import 'package:plant_app_ui/utils/size_config.dart';
class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: SizeConfig.heightMultiplier! * 1,
      child: Container(
        height: SizeConfig.heightMultiplier! * 7,
        width: SizeConfig.widthMultiplier! * 90,
        decoration: BoxDecoration(
          color: AppColors.thirdColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(0, -10), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Change schedule',
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.textMultiplier! * 3,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
