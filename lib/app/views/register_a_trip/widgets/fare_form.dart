import 'package:flutter/material.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/custom_text_field.dart';

class FareForm extends StatelessWidget {
  const FareForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Fare - if any!',
          style: AppData.boldTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          TEC: TextEditingController(),
          hint: "Enter fare for each seat...",
          textInputType: TextInputType.number,
          maxLines: 1,
        ),
      ],
    );
  }
}
