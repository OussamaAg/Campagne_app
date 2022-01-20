import 'package:campagne_v2/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: SvgPicture.asset('assets/images/mac-action.svg'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/home.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(vertical: 30.0),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/pie-chart.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(vertical: 30.0),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/clipboard.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(vertical: 30.0),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/invoice.svg',
                  color: AppColors.iconGray,
                ),
                iconSize: 20,
                padding: EdgeInsets.symmetric(vertical: 30.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
