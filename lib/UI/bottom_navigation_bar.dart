import 'dart:ffi';

import 'package:animation/UI/setting_screen.dart';
import 'package:animation/UI/wallet_screen.dart';
import 'package:animation/common/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'favorite_screen.dart';
import 'home_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Widget>screen=[
    HomePage(),
    FavoriteCarScreen(),
    WalletScreen(),
    SettingScreen(),
  ];
  int _selectIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: ClipRRect(
        borderRadius:const BorderRadius.all(Radius.circular(20)),
        child: SizedBox(
          height: 60.h,
          child: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            backgroundColor:ColorConstant.lightblueColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 14.sp,
            unselectedFontSize: 14.sp,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: _selectIndex,
            onTap: (value) {
              setState(() {
                _selectIndex=value;
              });
            },
            items:const [
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(Icons.favorite_border),
              ),
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(Icons.wallet),
              ),
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),

      body: screen.elementAt(_selectIndex),
    );
  }
}
