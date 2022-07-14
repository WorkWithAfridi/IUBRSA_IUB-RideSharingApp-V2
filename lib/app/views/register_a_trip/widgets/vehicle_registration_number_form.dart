import 'package:flutter/material.dart';

import '../../../../data/constants/app_data.dart';
import '../../../shared/widgets/custom_text_field.dart';

class VehicleRegistrationNumberForm extends StatelessWidget {
  const VehicleRegistrationNumberForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Vehicle registration number',
          style: AppData.boldTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          TEC: TextEditingController(),
          hint: "Enter vehicle registration/ license plate code...",
          textInputType: TextInputType.number,
          maxLines: 1,
        ),
      ],
    );
  }
}
