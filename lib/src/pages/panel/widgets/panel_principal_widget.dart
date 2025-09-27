import 'package:flutter/material.dart';
import 'package:lab_clinicas_core/lab_clinicas_core.dart';

class PanelPrincipalWidget extends StatelessWidget {
  const PanelPrincipalWidget({
    super.key,
    required this.passwordLabel,
    required this.password,
    required this.deskNumber,
    required this.labelColor,
    required this.buttomColor,
  });

  final String passwordLabel;
  final String password;
  final String deskNumber;
  final Color labelColor;
  final Color buttomColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: LabClinicasTheme.orangeColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              passwordLabel,
              style: LabClinicasTheme.titleStyle.copyWith(color: labelColor),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: buttomColor,
              ),
              child: Text(
                password,
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
            ),
            SizedBox(height: 24,),
             Text(
              'Guichê',
              style: LabClinicasTheme.titleStyle.copyWith(color: labelColor),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: buttomColor,
              ),
              child: Text(
                deskNumber,
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
