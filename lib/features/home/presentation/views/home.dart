import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_task/core/utls/app_colors.dart';
import 'package:nti_task/features/home/presentation/views/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> pages = [
    const HomeBody(),
    const HomeBody(),
    const HomeBody(),

  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.black,
          unselectedItemColor: AppColors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
          onTap: (index){
          setState(() {
            currentIndex=index;
          });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
          label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ""
            ),

          ]

      ),
    );
  }
}
