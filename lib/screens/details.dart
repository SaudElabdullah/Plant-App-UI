import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants/constants.dart';
import 'package:plant_app_ui/theme/app_colors.dart';
import 'package:plant_app_ui/utils/size_config.dart';
import 'package:plant_app_ui/widget/bottom_button.dart';
import 'package:plant_app_ui/widget/customed_tabs.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return Scaffold(
              backgroundColor: AppColors.primaryColor,
              body: SafeArea(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: Constant.top,
                      left: Constant.indentation,
                      child: Text(
                        'Living Room',
                        style: TextStyle(
                          color: AppColors.white.withOpacity(0.5),
                          fontSize: SizeConfig.textMultiplier! * 2,
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 7,
                      left: Constant.indentation,
                      child: Text(
                        'Fiddle Leaf',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: SizeConfig.textMultiplier! * 5,
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 15,
                      left: Constant.indentation,
                      child: Container(
                        padding:
                            EdgeInsets.all(SizeConfig.heightMultiplier! * 1),
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(0.1),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_photo_alternate,
                              size: SizeConfig.heightMultiplier! * 3,
                              color: AppColors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier! * 1,
                            ),
                            Text(
                              'Add Photo',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: SizeConfig.textMultiplier! * 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 25,
                      left: Constant.indentation,
                      child: Row(
                        children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(
                                  SizeConfig.heightMultiplier! * 1),
                              height: SizeConfig.heightMultiplier! * 15,
                              width: SizeConfig.widthMultiplier! * 25,
                              decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.1),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(
                                        SizeConfig.heightMultiplier! * 1),
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.water,
                                      size: SizeConfig.heightMultiplier! * 4,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier! * 1.5,
                                  ),
                                  Text(
                                    'Water',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: SizeConfig.textMultiplier! * 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier! * 0.5,
                                  ),
                                  Text(
                                    'In 6 Days',
                                    style: TextStyle(
                                      color: AppColors.white.withOpacity(0.5),
                                      fontSize: SizeConfig.textMultiplier! * 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier! * 2,
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(
                                  SizeConfig.heightMultiplier! * 1),
                              height: SizeConfig.heightMultiplier! * 15,
                              width: SizeConfig.widthMultiplier! * 25,
                              decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.1),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(
                                        SizeConfig.heightMultiplier! * 1),
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.park,
                                      size: SizeConfig.heightMultiplier! * 4,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier! * 1.5,
                                  ),
                                  Text(
                                    'Fertilizing',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: SizeConfig.textMultiplier! * 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier! * 0.5,
                                  ),
                                  Text(
                                    'In 28 Days',
                                    style: TextStyle(
                                      color: AppColors.white.withOpacity(0.5),
                                      fontSize: SizeConfig.textMultiplier! * 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 43,
                      child: Container(
                        height: SizeConfig.heightMultiplier! * 55,
                        width: SizeConfig.widthMultiplier! * 100,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 5,
                      right: Constant.indentation - 80,
                      child: Image.asset(
                        'assets/images/fiddle-leaf.png',
                        height: SizeConfig.heightMultiplier! * 50,
                      ),
                    ),
                    const CustomTabs(),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 53,
                      right: Constant.indentation,
                      left: Constant.indentation,
                      bottom: Constant.indentation + 40,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Care',
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier! * 5,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier! * 1,
                            ),
                            const Divider(
                              height: 10,
                              thickness: 1,
                              color: Colors.black12,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier! * 2,
                            ),
                            Text(
                              'light',
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier! * 4,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier! * 1,
                            ),
                            Text(
                              Constant.dumText,
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier! * 3,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier! * 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const BottomButton(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
