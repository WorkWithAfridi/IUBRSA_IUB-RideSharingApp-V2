import 'package:flutter/material.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/custom_text_field.dart';

class RouteDescriptionForm extends StatelessWidget {
  const RouteDescriptionForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Route description',
          style: AppData.boldTextStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        CustomTextField(
          TEC: TextEditingController(),
          hint:
              "Enter a brief description of the routes and inter sections you'll be taking.",
          textInputType: TextInputType.text,
          maxLines: 5,
        ),
      ],
    );
  }
}
