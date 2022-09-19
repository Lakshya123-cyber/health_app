import 'package:flutter/material.dart';
import 'package:health_app_rwcc/first_screen/first_screen.dart';
import 'package:health_app_rwcc/first_screen/src/ui/screen/find_doctors.dart';
import 'package:health_app_rwcc/second_screen/src/ui/widget/fitness_discover_widget.dart';
import 'package:health_app_rwcc/second_screen/src/ui/widget/fitness_home_widget.dart';
import 'package:health_app_rwcc/third_screen/third_screen.dart';

class FitnessMobileMainPage extends StatefulWidget {
  const FitnessMobileMainPage({Key? key}) : super(key: key);

  @override
  State<FitnessMobileMainPage> createState() => _FitnessMobileMainPageState();
}

class _FitnessMobileMainPageState extends State<FitnessMobileMainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: IndexedStack(
          index: _pageIndex,
          children: const [
            FirstScreen(),
            FindDoctors(),
            FitnessHomeWidget(),
            FitnessDiscoverWidget(),
            ThirdScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[400],
        currentIndex: _pageIndex,
        onTap: (idx) {
          setState(() {
            _pageIndex = idx;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_location_sharp,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_fire_department,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.workspace_premium,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
              ),
              label: ""),
        ],
      ),
    );
  }
}
