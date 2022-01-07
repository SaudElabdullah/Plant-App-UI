import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants/constants.dart';
import 'package:plant_app_ui/theme/app_colors.dart';
import 'package:plant_app_ui/utils/size_config.dart';
import 'package:date_time_format/date_time_format.dart';
import 'package:plant_app_ui/widget/plant_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Plants extends StatefulWidget {
  const Plants({Key? key}) : super(key: key);

  @override
  State<Plants> createState() => _PlantsState();
}

class _PlantsState extends State<Plants> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return Scaffold(
              backgroundColor: AppColors.white,
              body: SafeArea(
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Positioned(
                      top: Constant.top,
                      left: Constant.indentation,
                      child: Text(
                        DateTime.now().format('D, M j'),
                        style: GoogleFonts.notoSansDisplay(
                          textStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: SizeConfig.textMultiplier! * 2,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 7,
                      left: Constant.indentation,
                      child: Text(
                        'Top Picks',
                        style: GoogleFonts.playfairDisplay(
                          textStyle: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: SizeConfig.textMultiplier! * 5,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 4,
                      right: Constant.indentation,
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: Constant.shadow,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        child: SizedBox(
                          height: SizeConfig.heightMultiplier! * 7,
                          width: SizeConfig.heightMultiplier! * 7,
                          child: Icon(
                            Icons.apps,
                            size: SizeConfig.heightMultiplier! * 4,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 15,
                      right: Constant.indentation,
                      left: Constant.indentation,
                      bottom: Constant.indentation - 20,
                      child: SizedBox(
                        height: SizeConfig.heightMultiplier! * 85,
                        child: Column(
                          children: [
                            Container(
                              height: SizeConfig.heightMultiplier! * 8,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(
                                  20.0,
                                ),
                              ),
                              child: TabBar(
                                padding: const EdgeInsets.all(4.0),
                                labelStyle: GoogleFonts.notoSansDisplay(
                                  textStyle: TextStyle(
                                    fontSize: SizeConfig.textMultiplier! * 2.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                labelColor: AppColors.primaryColor,
                                unselectedLabelColor: AppColors.primaryColor,
                                controller: _tabController,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20.0,
                                  ),
                                  color: Colors.white,
                                ),
                                tabs: const [
                                  Tab(
                                    text: 'Top',
                                  ),
                                  Tab(
                                    text: 'Outdoor',
                                  ),
                                  Tab(
                                    text: 'Indoor',
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier! * 3,
                                        ),
                                        const PlantWidget(
                                          name: 'Fiddle Leaf',
                                          type: 'Living Room',
                                          image:
                                              'assets/images/fiddle-leaf.png',
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier! * 3,
                                        ),
                                        const PlantWidget(
                                          name: 'Aloe Vera',
                                          type: 'Living Room',
                                          image: 'assets/images/Aloe-Vera.png',
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier! * 3,
                                        ),
                                        const PlantWidget(
                                          name: 'Fiddle Leaf',
                                          type: 'Living Room',
                                          image:
                                              'assets/images/fiddle-leaf.png',
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier! * 3,
                                        ),
                                        const PlantWidget(
                                          name: 'Aloe Vera',
                                          type: 'Living Room',
                                          image: 'assets/images/Aloe-Vera.png',
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier! * 3,
                                        ),
                                        const PlantWidget(
                                          name: 'Fiddle Leaf',
                                          type: 'Living Room',
                                          image:
                                              'assets/images/fiddle-leaf.png',
                                        ),
                                        SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier! * 3,
                                        ),
                                        const PlantWidget(
                                          name: 'Aloe Vera',
                                          type: 'Living Room',
                                          image: 'assets/images/Aloe-Vera.png',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
