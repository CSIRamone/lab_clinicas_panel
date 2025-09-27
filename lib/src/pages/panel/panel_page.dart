import 'package:flutter/material.dart';
import 'package:lab_clinicas_core/lab_clinicas_core.dart';
import 'package:lab_clinicas_panel/src/pages/panel/widgets/panel_principal_widget.dart';
import 'package:lab_clinicas_panel/src/pages/panel/widgets/password_tile_widget.dart';

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
            SizedBox(height: 40),
            Divider(color: LabClinicasTheme.orangeColor),
            SizedBox(height: 30),
            Text(
              'Últimos Chamados',
              style: LabClinicasTheme.titleStyle.copyWith(
                color: LabClinicasTheme.orangeColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
                PasswordTileWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
