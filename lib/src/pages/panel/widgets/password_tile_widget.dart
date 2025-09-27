import 'package:flutter/material.dart';
import 'package:lab_clinicas_core/lab_clinicas_core.dart';

class PasswordTileWidget extends StatelessWidget {
  const PasswordTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(color: LabClinicasTheme.orangeColor),
      ),
      child: Column(
        children: [
          Text(
            'BG5898',
            style: LabClinicasTheme.titleStyle.copyWith(
              fontSize: 28,
              color: LabClinicasTheme.blueColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Guichê 03',
            style: LabClinicasTheme.titleStyle.copyWith(
              fontSize: 18,
              color: LabClinicasTheme.orangeColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
