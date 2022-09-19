import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_app_rwcc/first_screen/src/ui/screen/mental_health_main_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Health App",
      debugShowCheckedModeBanner: false,
      home: ProviderScope(
        child: MainScreen(),
      ),
    );
  }
}
