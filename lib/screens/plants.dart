import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants/constants.dart';
import 'package:plant_app_ui/theme/app_colors.dart';
import 'package:plant_app_ui/utils/size_config.dart';
import 'package:date_time_format/date_time_format.dart';
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
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: SizeConfig.textMultiplier! * 2,
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.heightMultiplier! * 7,
                      left: Constant.indentation,
                      child: Text(
                        'Top Picks',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: SizeConfig.textMultiplier! * 5,
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
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(
                                  20.0,
                                ),
                              ),
                              child: TabBar(
                                padding: const EdgeInsets.all(4.0),
                                labelStyle: TextStyle(
                                  fontSize: SizeConfig.textMultiplier! * 2.5,
                                  fontWeight: FontWeight.w700,
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
                                        Stack(
                                          alignment: AlignmentDirectional.center,
                                          children: [
                                            Container(
                                              width: SizeConfig.widthMultiplier! *
                                                  88,
                                              height:
                                                  SizeConfig.heightMultiplier! *
                                                      60,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    AppColors.primaryColor,
                                                    const Color(0xFF26584A),
                                                  ],
                                                  begin: const FractionalOffset(
                                                    0.0,
                                                    0.0,
                                                  ),
                                                  end: const FractionalOffset(
                                                    1.0,
                                                    1.0,
                                                  ),
                                                  stops: const [0.0, 0.8],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                            ),
                                            Positioned(
                                              left: Constant.indentation,
                                              top: Constant.top,
                                              child: Text(
                                                'Fiddle Leaf',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      SizeConfig.textMultiplier! *
                                                          5,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: Constant.indentation,
                                              top: SizeConfig.heightMultiplier! *
                                                  10.0,
                                              child: Text(
                                                'Living Room',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                      SizeConfig.textMultiplier! *
                                                          2,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: -25,
                                              child: Image.asset(
                                                'assets/images/fiddle-leaf.png',
                                                height:
                                                    SizeConfig.heightMultiplier! *
                                                        50,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: Container(
                                                width:
                                                    SizeConfig.widthMultiplier! *
                                                        25,
                                                height:
                                                    SizeConfig.heightMultiplier! *
                                                        15,
                                                decoration: BoxDecoration(
                                                  color: AppColors.secondaryColor,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(25.0),
                                                    bottomRight:
                                                        Radius.circular(25.0),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'from',
                                                        style: TextStyle(
                                                          color: Colors.black38,
                                                          fontSize: SizeConfig.textMultiplier! * 2,
                                                        ),
                                                      ),
                                                      Text(
                                                        '\$25',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: SizeConfig.textMultiplier! * 3,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height:
                                          SizeConfig.heightMultiplier! * 3,
                                        ),
                                        Stack(
                                          alignment: AlignmentDirectional.center,
                                          children: [
                                            Container(
                                              width: SizeConfig.widthMultiplier! *
                                                  88,
                                              height:
                                              SizeConfig.heightMultiplier! *
                                                  60,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    AppColors.primaryColor,
                                                    const Color(0xFF26584A),
                                                  ],
                                                  begin: const FractionalOffset(
                                                    0.0,
                                                    0.0,
                                                  ),
                                                  end: const FractionalOffset(
                                                    1.0,
                                                    1.0,
                                                  ),
                                                  stops: const [0.0, 0.8],
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(25.0),
                                              ),
                                            ),
                                            Positioned(
                                              left: Constant.indentation,
                                              top: Constant.top,
                                              child: Text(
                                                'Fiddle Leaf',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                  SizeConfig.textMultiplier! *
                                                      5,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: Constant.indentation,
                                              top: SizeConfig.heightMultiplier! *
                                                  10.0,
                                              child: Text(
                                                'Living Room',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:
                                                  SizeConfig.textMultiplier! *
                                                      2,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: -25,
                                              child: Image.asset(
                                                'assets/images/fiddle-leaf.png',
                                                height:
                                                SizeConfig.heightMultiplier! *
                                                    50,
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: Container(
                                                width:
                                                SizeConfig.widthMultiplier! *
                                                    25,
                                                height:
                                                SizeConfig.heightMultiplier! *
                                                    15,
                                                decoration: BoxDecoration(
                                                  color: AppColors.secondaryColor,
                                                  borderRadius:
                                                  const BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(25.0),
                                                    bottomRight:
                                                    Radius.circular(25.0),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'from',
                                                        style: TextStyle(
                                                          color: Colors.black38,
                                                          fontSize: SizeConfig.textMultiplier! * 2,
                                                        ),
                                                      ),
                                                      Text(
                                                        '\$25',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: SizeConfig.textMultiplier! * 3,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Center(
                                    child: Text(
                                      'Place Bid',
                                    ),
                                  ),
                                  const Center(
                                    child: Text(
                                      'Buy Now',
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
