import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../data/constants/app_data.dart';

class Shortcut extends StatelessWidget {
  final String title;
  final IconData icon;
  final String link;
  final Color color;
  const Shortcut({
    Key? key,
    required this.title,
    required this.icon,
    required this.link,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: AppData.defaultButtonHeight,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppData.defaultBorderRadius,
              ),
              border: Border.all(
                width: 1,
                color: AppData.customLightGrey,
              ),
            ),
            child: Icon(
              icon,
              color: color,
              size: 18,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: AppData.regularTextStyle,
          )
        ],
      ),
    );
  }
}
