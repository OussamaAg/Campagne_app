import 'package:campagne_v2/style/colors.dart';
import 'package:flutter/material.dart';

class userBar extends StatelessWidget {
  const userBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 10.0),
        Row(
          children: [
            CircleAvatar(
              radius: 17.0,
              backgroundImage: NetworkImage(
                  'https://www.faxinfo.fr/wp-content/uploads/2020/12/medecin-logo-266x300.jpg'),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: AppColors.black,
            )
          ],
        )
      ],
    );
  }
}
