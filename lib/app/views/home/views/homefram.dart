import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/views/home/controller/homeframe_controller.dart';
import 'package:iubrsa/app/views/chat/views/chatpage.dart';
import 'package:iubrsa/app/views/home/views/homepage.dart';

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
  ];

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
            left: 20,
          ),
          child: Align(
            child: GestureDetector(
              onTap: () {
                controller.onProfileImageClick();
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: AppData.royalBlueColor,
                      borderRadius: BorderRadius.circular(
                        35,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppData.royalBlueColor,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    child: Hero(
                      tag: "profile_image",
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        child: Image.network(
                            'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: [
          Align(
            child: GestureDetector(
              onTap: () {
                controller.onNotificationBellbuttonClick();
              },
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
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: PageView.builder(
          itemCount: 2,
          physics: const BouncingScrollPhysics(),
          controller: controller.pageController.value,
          onPageChanged: (value) {
            controller.pageIndex.value = value;
          },
          itemBuilder: (context, index) {
            return homeframe_pages[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppData.customWhite,
        elevation: AppData.defaultElevation.toDouble(),
        onPressed: () {
          controller.onHomeframeFloatingActionButtonClick();
        },
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
                size: controller.pageIndex.value == 0 ? 22 : 18,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
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
