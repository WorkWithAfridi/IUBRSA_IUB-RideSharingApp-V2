
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/home/widgets/shortcut.dart';

import '../../../../data/constants/app_data.dart';
import '../controller/homeframe_controller.dart';

class ShortcutsTab extends StatelessWidget {
  ShortcutsTab({
    Key? key,
  }) : super(key: key);

  final HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppData.defaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shortcuts',
                    style: AppData.boldTextStyle.copyWith(
                      fontSize: 20,
                      height: .95,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  controller.onSoSButtonClick();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: AppData.defaultButtonHeight,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppData.customWhite,
                        borderRadius: BorderRadius.circular(
                          AppData.defaultBorderRadius,
                        ),
                        border: Border.all(
                          width: 1,
                          color: AppData.customWhite,
                        ),
                      ),
                      child: const Icon(
                        Icons.sos,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "S.O.S",
                      style: AppData.regularTextStyle,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Shortcut(
                title: 'iub.edu.bd',
                icon: Icons.web,
                color: Colors.red,
                link: 'http://www.iub.edu.bd/',
              ),
              const SizedBox(
                width: 10,
              ),
              const Shortcut(
                title: 'iRas V1',
                icon: Icons.school,
                color: Colors.pink,
                link: 'https://irasv1.iub.edu.bd/#/',
              ),
              const SizedBox(
                width: 10,
              ),
              const Shortcut(
                title: 'old iRas',
                icon: Icons.school,
                link: 'https://iras.iub.edu.bd/login/Default.aspx',
                color: Colors.green,
              ),
              const SizedBox(
                width: 10,
              ),
              const Shortcut(
                title: 'Community',
                icon: Icons.group,
                link: 'https://www.facebook.com/iub.edu',
                color: AppData.royalBlueColor,
              ),
              const SizedBox(
                width: 10,
              ),
              const Shortcut(
                title: 'Traffic Alert',
                icon: Icons.traffic,
                link: '',
                color: Colors.red,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
