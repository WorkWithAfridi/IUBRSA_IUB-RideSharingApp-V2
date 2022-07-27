import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/home/controller/homeframe_controller.dart';
import 'package:iubrsa/app/views/chat/views/chatpage.dart';
import 'package:iubrsa/app/views/home/views/home_page.dart';
import 'package:iubrsa/app/views/home/views/app_drawer.dart';
import 'package:iubrsa/app/views/home/views/past_trips_page.dart';

import '../../../../data/constants/app_data.dart';

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

  List<Widget> homeframe_pages = [
    Homepage(),
    Chatpage(),
    PastTrips(),
    Container(
      child: Center(
        child: Text("Test"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Test"),
      ),
    ),
  ];

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          AppData.appName,
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: AppData.darkBlueColor,
            size: 20,
          ),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: [
          SizedBox(
            width: 30,
            child: IconButton(
              onPressed: () {
                controller.onRegisterATripButtonClick();
              },
              icon: const Icon(
                Icons.add,
                color: AppData.darkBlueColor,
                size: 20,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              controller.onNotificationBellbuttonClick();
            },
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: AppData.darkBlueColor,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: AppDrawer(),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: PageView.builder(
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController.value,
          onPageChanged: (value) {
            controller.pageIndex.value = value;
          },
          itemBuilder: (context, index) {
            return homeframe_pages[index];
          },
        ),
      ),
      bottomNavigationBar: HomeFrameBottomNavigationBar(),
    );
  }
}

class HomeFrameBottomNavigationBar extends StatelessWidget {
  HomeFrameBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  final HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_home_regular,
              size: 18,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled,
              size: 22,
            ),
            label: "Home",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.add,
          //     size: 18,
          //   ),
          //   activeIcon: Icon(
          //     Icons.add,
          //     size: 22,
          //   ),
          //   label: "Register ride",
          // ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_chat_regular,
              size: 18,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_chat_filled,
              size: 22,
            ),
            label: "Start a new chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular,
              size: 18,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_ticket_filled,
              size: 22,
            ),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_person_regular,
              size: 18,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
              size: 22,
            ),
            label: "Tickets",
          ),
        ],
      ),
    );
  }
}
