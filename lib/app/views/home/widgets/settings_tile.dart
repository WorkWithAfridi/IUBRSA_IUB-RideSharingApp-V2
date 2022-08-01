import 'package:flutter/material.dart';

import '../../../../data/constants/app_data.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function callBackFunction;
  final Color color;
  const SettingsTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.callBackFunction,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 20,
          ),
          const SizedBox(
            width: 5,
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
