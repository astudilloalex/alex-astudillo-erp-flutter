import 'package:alex_astudillo_erp/ui/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () => context.goNamed(RouteName.signIn),
        child: const Text('Test'),
      ),
    );
  }
}
