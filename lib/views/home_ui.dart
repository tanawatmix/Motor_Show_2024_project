// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:motor_show_2024_app/views/toyota.dart';
import 'package:motor_show_2024_app/views/nissan.dart';
import 'package:motor_show_2024_app/views/mazda.dart';
import 'package:motor_show_2024_app/views/honda.dart';
import 'package:motor_show_2024_app/views/calculate.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<Widget> _showView = [
    ToyotaViewUI(),
    HondaViewUI(),
    CarCalculateUI(),
    NissanVeiwUI(),
    MazdaViewUI()
  ];
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'คำนวณค่างวดรถ',
          style: TextStyle(color: Color.fromARGB(255, 0, 253, 169)),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Color.fromARGB(255, 0, 109, 44),
            height: 1.0,
          ),
        ),
      ),
      body: _showView[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoToyota.png',
              width: MediaQuery.of(context).size.width * 0.07,
            ),
            title: Text(''),
            selectedColor: Color.fromARGB(255, 0, 8, 255),
            unselectedColor: const Color.fromARGB(255, 255, 1, 1),
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoHonda.png',
              width: MediaQuery.of(context).size.width * 0.07,
            ),
            title: Text(''),
            selectedColor: Color.fromARGB(255, 0, 8, 255),
            unselectedColor: const Color.fromARGB(255, 255, 1, 1),
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoAuto.jpg',
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            title: Text(''),
            selectedColor: Color.fromARGB(255, 0, 8, 255),
            unselectedColor: const Color.fromARGB(255, 255, 1, 1),
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logonissan.png',
              width: MediaQuery.of(context).size.width * 0.07,
            ),
            title: Text(''),
            selectedColor: Color.fromARGB(255, 0, 8, 255),
            unselectedColor: const Color.fromARGB(255, 255, 1, 1),
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoMazda.jpg',
              width: MediaQuery.of(context).size.width * 0.07,
            ),
            title: Text(''),
            selectedColor: Color.fromARGB(255, 0, 8, 255),
            unselectedColor: const Color.fromARGB(255, 255, 1, 1),
          ),
        ],
      ),
    );
  }
}
