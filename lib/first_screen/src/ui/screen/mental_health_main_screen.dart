import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_app_rwcc/first_screen/src/riverpod/bottom_tab_provider.dart';
import 'find_doctors.dart';
import 'mental_home_component.dart';
import 'mental_wellness_component.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, _) {
            final index = ref.watch(mhBottomTabProvider);
            switch (index) {
              case 0:
                return const MentalHomeComponent();
              case 1:
                return const FindDoctors();
              case 2:
                return const MentalWellnessComponent();
              case 3:
                return Column(
                  children: [],
                );
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
