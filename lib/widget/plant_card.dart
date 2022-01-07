import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/constants/constants.dart';
import 'package:plant_app_ui/theme/app_colors.dart';
import 'package:plant_app_ui/utils/size_config.dart';

class PlantWidget extends StatelessWidget {
  const PlantWidget({Key? key, this.name, this.type, this.image})
      : super(key: key);
  final String? name;
  final String? type;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/details');
          },
          child: Container(
            width: SizeConfig.widthMultiplier! * 88,
            height: SizeConfig.heightMultiplier! * 60,
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
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
        Positioned(
          left: Constant.indentation,
          top: Constant.top,
          child: Text(
            name!,
            style: GoogleFonts.playfairDisplay(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.textMultiplier! * 5,
              ),
            ),
          ),
        ),
        Positioned(
          left: Constant.indentation,
          top: SizeConfig.heightMultiplier! * 10.0,
          child: Text(
            type!,
            style: GoogleFonts.notoSansDisplay(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.textMultiplier! * 2,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          child: Image.asset(
            image!,
            height: SizeConfig.heightMultiplier! * 50,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: SizeConfig.widthMultiplier! * 25,
            height: SizeConfig.heightMultiplier! * 15,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'from',
                    style: GoogleFonts.notoSansDisplay(
                      textStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: SizeConfig.textMultiplier! * 2,
                      ),
                    ),
                  ),
                  Text(
                    '\$25',
                    style: GoogleFonts.notoSansDisplay(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.textMultiplier! * 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
