import 'package:flutter/material.dart';
import 'package:lab_clinicas_core/lab_clinicas_core.dart';
import 'package:lab_clinicas_panel/src/pages/panel/widgets/panel_principal_widget.dart';

class PanelPage extends StatelessWidget {
  const PanelPage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: LabClinicasAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 32),
                SizedBox(
                  width: sizeOf.width * 0.40,
                  child: PanelPrincipalWidget(
                    passwordLabel: 'Senha Anterior',
                    password: 'BG5898',
                    deskNumber: '03',
                    labelColor: LabClinicasTheme.orangeColor,
                    buttomColor: LabClinicasTheme.blueColor,
                  ),
                ),
                SizedBox(height: 32),
                SizedBox(
                  width: sizeOf.width * 0.40,
                  child: PanelPrincipalWidget(
                    passwordLabel: 'Chamando Senha',
                    password: 'BG5898',
                    deskNumber: '03',
                    labelColor: LabClinicasTheme.blueColor,
                    buttomColor: LabClinicasTheme.orangeColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
