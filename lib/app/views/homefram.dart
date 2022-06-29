import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/homeframe_controller.dart';
import 'package:iubrsa/app/widgets/shortcut_layout.dart';

import '../../data/constants/app_data.dart';

class Homeframe extends StatefulWidget {
  const Homeframe({Key? key}) : super(key: key);

  @override
  State<Homeframe> createState() => _HomeframeState();
}

class _HomeframeState extends State<Homeframe> {
  HomeframController controller = Get.find();
  @override
  void dispose() {
    Get.delete<HomeframController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppData.appName,
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
          ),
          child: Align(
            child: GestureDetector(
              onTap: () {
                controller.onProfileImageClick();
              },
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
              ),
            ),
          ),
        ),
        actions: [
          Align(
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: AppData.customLightGrey.withOpacity(.15),
                borderRadius: BorderRadius.circular(35),
              ),
              child: const Icon(
                Icons.notifications_none_outlined,
                color: AppData.darkBlueColor,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: AppData.defaultPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hi, Khondakar Afridi',
                      style: AppData.regularTextStyle,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Where are you heading\ntoday?',
                          style: AppData.boldTextStyle
                              .copyWith(fontSize: 20, height: .95),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppData.customLightGrey.withOpacity(.15),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: AppData.darkBlueColor,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your location',
                          style: AppData.boldTextStyle
                              .copyWith(fontSize: 20, height: .95),
                        ),
                        Text(
                          'view full map',
                          style: AppData.regularTextStyle.copyWith(
                            color: Colors.blue.withOpacity(.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: Get.height / 3,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(
                              AppData.defaultBorderRadius)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: AppData.royalBlueColor,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const Icon(
                            Icons.location_pin,
                            color: AppData.customWhite,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Bily Road,',
                          style: AppData.boldTextStyle,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Bangladesh',
                          style: AppData.regularTextStyle.copyWith(
                            color: AppData.customDarkGrey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Active trips',
                          style: AppData.boldTextStyle.copyWith(
                            fontSize: 20,
                            height: .95,
                          ),
                        ),
                        Text(
                          'view on map',
                          style: AppData.regularTextStyle.copyWith(
                            color: Colors.blue.withOpacity(.5),
                            fontWeight: FontWeight.bold,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.showActiveTrips("To");
                      },
                      child: Container(
                        height: 180,
                        width: Get.width / 2,
                        decoration: BoxDecoration(
                          color: AppData.babyBlueColor,
                          borderRadius: BorderRadius.circular(
                              AppData.defaultBorderRadius),
                        ),
                        padding: AppData.defaultPadding,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: SvgPicture.asset(
                                'assets/svgs/classroom.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'To',
                              style: AppData.regularTextStyle,
                            ),
                            Text(
                              'Independent\nUniversity\nBangladesh',
                              style: AppData.boldTextStyle.copyWith(
                                fontSize: 15,
                                height: .95,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.showActiveTrips("From");
                      },
                      child: Container(
                        height: 180,
                        width: Get.width / 2,
                        decoration: BoxDecoration(
                          color: AppData.creamColor,
                          borderRadius: BorderRadius.circular(
                              AppData.defaultBorderRadius),
                        ),
                        padding: AppData.defaultPadding,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: SvgPicture.asset(
                                'assets/svgs/home.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'From',
                              style: AppData.regularTextStyle,
                            ),
                            Text(
                              'Independent\nUniversity\nBangladesh',
                              style: AppData.boldTextStyle.copyWith(
                                fontSize: 15,
                                height: .95,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Shortcut(
                      title: 'S.O.S',
                      icon: Icons.sos,
                      color: Colors.black,
                      link: '',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Shortcut(
                      title: 'iub.edu.bd',
                      icon: Icons.web,
                      color: Colors.red,
                      link: '',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Shortcut(
                      title: 'iRas V1',
                      icon: Icons.school,
                      color: Colors.pink,
                      link: '',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Shortcut(
                      title: 'old iRas',
                      icon: Icons.school,
                      link: '',
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Shortcut(
                      title: 'Community',
                      icon: Icons.group,
                      link: '',
                      color: AppData.royalBlueColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Shortcut(
                      title: 'Traffic Alert',
                      icon: Icons.traffic,
                      link: '',
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppData.customWhite,
        elevation: AppData.defaultElevation.toDouble(),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: AppData.royalBlueColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppData.royalBlueColor,
          unselectedItemColor: AppData.customLightGrey,
          backgroundColor: AppData.customWhite,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: AppData.defaultElevation.toDouble(),
          currentIndex: controller.pageIndex.value,
          onTap: (value) {
            controller.pageIndex.value = value;
            controller.pageController.value.jumpToPage(
              value,
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: controller.pageIndex.value == 0 ? 20 : 15,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                size: controller.pageIndex.value == 1 ? 20 : 15,
              ),
              label: "Start a new chat",
            ),
          ],
        ),
      ),
    );
  }
}
