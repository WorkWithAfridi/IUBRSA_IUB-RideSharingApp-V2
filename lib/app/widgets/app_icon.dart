import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iubrsa/data/constants/app_data.dart';
import 'package:lottie/lottie.dart';

class AppIcon extends StatelessWidget {
  final double size;
  const AppIcon({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: SvgPicture.asset(
        'assets/svgs/app_icon.svg',
        color: AppData.royalBlueColor,
      ),
    );
  }
}
