import 'package:alex_astudillo_erp/ui/routes/route_page.dart';
import 'package:alex_astudillo_erp/ui/theme/app_theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: AppThemeData.dark,
      routerConfig: RoutePage.router,
      theme: AppThemeData.light,
    );
  }
}
