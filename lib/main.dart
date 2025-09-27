import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:lab_clinicas_core/lab_clinicas_core.dart';
import 'package:lab_clinicas_panel/src/binding/lab_clinicas_application.binding.dart';
import 'package:lab_clinicas_panel/src/pages/login/login_router.dart';
import 'package:lab_clinicas_panel/src/pages/panel/panel_page.dart';
import 'package:lab_clinicas_panel/src/pages/panel/panel_router.dart';
import 'package:lab_clinicas_panel/src/pages/splash/splash_page.dart';

void main() {
  runApp(const LabClinicasPanelApp());
}

class LabClinicasPanelApp extends StatelessWidget {
  const LabClinicasPanelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LabClinicasCoreConfig(title: 'Lab Clinicas Painel',
    bindings: LabClinicasApplicationBinding(),
    pagesBuilders: [
      FlutterGetItPageBuilder(page: (_) => SplashPage(), path: '/'),
    ],
    pages: [LoginRouter(), PanelRouter()],
    );
  }
}
