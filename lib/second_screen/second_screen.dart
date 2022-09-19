import 'package:flutter/material.dart';
import 'package:health_app_rwcc/second_screen/src/ui/fitness_start_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FitnessStartScreen(),
    );
  }
}
