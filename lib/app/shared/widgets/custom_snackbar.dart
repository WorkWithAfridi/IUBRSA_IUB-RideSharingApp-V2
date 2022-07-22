import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iubrsa/data/constants/app_data.dart';

showCustomSnackbar({
  required String title,
  required String message,
  bool isError = false,
  bool isSuccess = false,
  bool isWarning = false,
}) {
  Get.snackbar(
    "_",
    "_",
    borderRadius: AppData.defaultBorderRadius,
    shouldIconPulse: true,
    boxShadows: [
      BoxShadow(
        offset: const Offset(0, 2),
        color: Colors.black.withOpacity(.1),
        blurRadius: 10,
        spreadRadius: 10,
      )
    ],
    snackPosition: SnackPosition.TOP,
    backgroundColor: isError
        ? Color(0xFFC72C41)
        : isSuccess
            ? Colors.green
            : isWarning
                ? Colors.orange
                : AppData.royalBlueColor,
    margin: EdgeInsets.all(20),
    duration: const Duration(seconds: 6),
    titleText: Text(
      title,
      style: AppData.boldTextStyle.copyWith(
        fontSize: 18,
        color: Colors.white,
        height: .95,
      ),
    ),
    borderWidth: 20,
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    icon: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'assets/snackbar_assets/chat_bubble.svg',
            color: isError
                ? Color(0xFF801336)
                : isSuccess
                    ? Colors.greenAccent
                    : isWarning
                        ? Colors.orangeAccent
                        : Colors.blueAccent,
            height: 40,
          ),
          Positioned(
            top: 10,
            child: SvgPicture.asset(
              isError
                  ? 'assets/snackbar_assets/close.svg'
                  : isSuccess
                      ? 'assets/snackbar_assets/success.svg'
                      : isWarning
                          ? 'assets/snackbar_assets/warning.svg'
                          : 'assets/snackbar_assets/notification.svg',
              height: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
    messageText: Text(
      message,
      style: AppData.regularTextStyle.copyWith(
        fontSize: 12,
        color: Colors.white,
        height: 1,
      ),
    ),
  );

  // // Get.snackbar(
  // //   "_",
  // //   "_",
  // //   borderRadius: 5,
  // //   shouldIconPulse: true,
  // //   // boxShadows: [
  // //   //   BoxShadow(
  // //   //     offset: const Offset(2, 6),
  // //   //     color: Colors.black.withOpacity(.4),
  // //   //     blurRadius: 5,
  // //   //     spreadRadius: 3,
  // //   //   )
  // //   // ],
  // //   snackPosition: SnackPosition.TOP,
  // //   backgroundColor: isError
  // //       ? Color(0xFFC72C41)
  // //       : isSuccess
  // //           ? Colors.green
  // //           : isWarning
  // //               ? Colors.orange
  // //               : AppData.royalBlueColor,
  // //   margin: EdgeInsets.all(20),
  // //   duration: const Duration(seconds: 6),
  // //   titleText: Text(
  // //     title,
  // //     style: AppData.boldTextStyle.copyWith(
  // //       fontSize: 18,
  // //       color: Colors.white,
  // //       height: .95,
  // //     ),
  // //   ),
  // //   borderWidth: 20,

  // //   isDismissible: true,
  // //   dismissDirection: DismissDirection.horizontal,
  // //   icon: Padding(
  // //     padding: const EdgeInsets.only(left: 8.0, right: 2),
  // //     child: Stack(
  // //       alignment: Alignment.center,
  // //       children: [
  // //         SvgPicture.asset(
  // //           'assets/snackbar_assets/chat_bubble.svg',
  // //           color: isError
  // //               ? Color(0xFF801336)
  // //               : isSuccess
  // //                   ? Colors.greenAccent
  // //                   : isWarning
  // //                       ? Colors.orangeAccent
  // //                       : Colors.blueAccent,
  // //           height: 40,
  // //         ),
  // //         Positioned(
  // //           top: 10,
  // //           child: SvgPicture.asset(
  // //             isError
  // //                 ? 'assets/snackbar_assets/close.svg'
  // //                 : isSuccess
  // //                     ? 'assets/snackbar_assets/success.svg'
  // //                     : isWarning
  // //                         ? 'assets/snackbar_assets/warning.svg'
  // //                         : 'assets/snackbar_assets/notification.svg',
  // //             height: 16,
  // //             color: Colors.white,
  // //           ),
  // //         ),
  // //       ],
  // //     ),
  // //   ),
  // //   messageText: Text(
  // //     message,
  // //     style: AppData.regularTextStyle.copyWith(
  // //       fontSize: 12,
  // //       color: Colors.white,
  // //       height: 1,
  // //     ),
  // //   ),
  // // );

  // ScaffoldMessenger.of(Get.context!).showSnackBar(
  //   SnackBar(
  //     content: Stack(
  //       clipBehavior: Clip.none,
  //       children: [
  //         Container(
  //           padding: const EdgeInsets.all(16),
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(AppData.defaultBorderRadius),
  //             color: isError
  //                 ? Color(0xFFC72C41)
  //                 : isSuccess
  //                     ? Colors.green
  //                     : isWarning
  //                         ? Colors.orange
  //                         : AppData.royalBlueColor,
  //           ),
  //           child: Row(
  //             children: [
  //               const SizedBox(
  //                 width: 48,
  //               ),
  //               Expanded(
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   mainAxisSize: MainAxisSize.min,
  //                   children: [
  //                     Text(
  //                       title,
  //                       style: AppData.boldTextStyle.copyWith(
  //                         fontSize: 18,
  //                         color: Colors.white,
  //                         height: .95,
  //                       ),
  //                     ),
  //                     // Spacer(),
  //                     const SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text(
  //                       message,
  //                       style: AppData.regularTextStyle.copyWith(
  //                         fontSize: 12,
  //                         color: Colors.white,
  //                         height: 1,
  //                       ),
  //                       // maxLines: 2,
  //                       // overflow: TextOverflow.ellipsis,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Positioned(
  //           bottom: 0,
  //           child: ClipRRect(
  //             borderRadius: const BorderRadius.only(
  //               bottomLeft: Radius.circular(AppData.defaultBorderRadius),
  //             ),
  //             child: SvgPicture.asset(
  //               'assets/snackbar_assets/bubbles.svg',
  //               height: 48,
  //               width: 40,
  //               color: isError
  //                   ? Color(0xFF801336)
  //                   : isSuccess
  //                       ? Colors.greenAccent
  //                       : isWarning
  //                           ? Colors.orangeAccent
  //                           : Colors.blueAccent,
  //             ),
  //           ),
  //         ),
  //         Positioned(
  //           top: -15,
  //           left: 8,
  //           child: Stack(
  //             alignment: Alignment.center,
  //             children: [
  //               SvgPicture.asset(
  //                 'assets/snackbar_assets/chat_bubble.svg',
  //                 color: isError
  //                     ? Color(0xFF801336)
  //                     : isSuccess
  //                         ? Colors.greenAccent
  //                         : isWarning
  //                             ? Colors.orangeAccent
  //                             : Colors.blueAccent,
  //                 height: 40,
  //               ),
  //               Positioned(
  //                 top: 10,
  //                 child: SvgPicture.asset(
  //                   isError
  //                       ? 'assets/snackbar_assets/close.svg'
  //                       : isSuccess
  //                           ? 'assets/snackbar_assets/success.svg'
  //                           : isWarning
  //                               ? 'assets/snackbar_assets/warning.svg'
  //                               : 'assets/snackbar_assets/notification.svg',
  //                   height: 16,
  //                   color: Colors.white,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //     behavior: SnackBarBehavior.floating,
  //     backgroundColor: Colors.transparent,
  //     elevation: 0,
  //     duration: const Duration(seconds: 6),
  //     dismissDirection: DismissDirection.horizontal,
  //   ),
  // );
}
