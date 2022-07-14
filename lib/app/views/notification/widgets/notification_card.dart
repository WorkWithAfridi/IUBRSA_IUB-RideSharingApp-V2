
import 'package:flutter/material.dart';

import '../../../../data/constants/app_data.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 90,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: AppData.customWhite,
            borderRadius: BorderRadius.circular(
              AppData.defaultBorderRadius,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: double.maxFinite,
                width: 10,
                decoration: const BoxDecoration(
                  color: AppData.royalBlueColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      AppData.defaultBorderRadius,
                    ),
                    bottomLeft: Radius.circular(
                      AppData.defaultBorderRadius,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: AppData.defaultPadding,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This is a title',
                        style: AppData.boldTextStyle,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non,consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.',
                        style: AppData.lightTextStyle.copyWith(
                          height: .95,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
