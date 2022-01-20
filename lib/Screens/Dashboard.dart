import 'dart:ffi';

import 'package:campagne_v2/components/Header.dart';
import 'package:campagne_v2/components/SideMenu.dart';
import 'package:campagne_v2/components/userBar.dart';
import 'package:campagne_v2/config/size_config.dart';
import 'package:campagne_v2/style/colors.dart';
import 'package:campagne_v2/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final primaryColor = Color(0xFF151026);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bonjour , Docteur'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 15,
              child: Container(
                width: double.infinity,
                height: SizeConfig.screenHeight,
                color: AppColors.white,
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Column(
                  children: [
                    userBar(),
                    Container(
                      width: double.infinity,
                      height: SizeConfig.screenHeight,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 30.0),
                        child: Column(
                          children: [Header()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
