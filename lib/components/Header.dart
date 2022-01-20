import 'package:campagne_v2/style/colors.dart';
import 'package:campagne_v2/style/style.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(
                text: 'Tableau de bord',
                size: 40.0,
                fontWeight: FontWeight.w800,
              )
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Expanded(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  contentPadding: EdgeInsets.only(left: 40.0, right: 5.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: AppColors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: AppColors.black),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.black,
                  ),
                  hintText: 'Rechercher',
                  hintStyle:
                      TextStyle(color: AppColors.secondary, fontSize: 14.0)),
            ))
      ],
    );
  }
}
