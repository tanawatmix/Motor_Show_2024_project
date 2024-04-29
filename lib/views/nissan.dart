// ignore_for_file: unnecessary_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NissanVeiwUI extends StatefulWidget {
  const NissanVeiwUI({super.key});

  @override
  State<NissanVeiwUI> createState() => _NissanVeiwUIState();
}

class _NissanVeiwUIState extends State<NissanVeiwUI> {
  //create variable to use with ListView car
  List<String> _Nissan = [
    'assets/images/nissangtrcoupe.jpg',
    'assets/images/nissangtrcoupe.jpg',
    'assets/images/nissangtrcoupe.jpg',
    'assets/images/nissangtrcoupe.jpg',
    'assets/images/nissangtrcoupe.jpg',
  ];
  List<String> _NissanTruck= [
    'assets/images/nissanTitan.jpg',
    'assets/images/nissanTitan.jpg',
    'assets/images/nissanTitan.jpg',
    'assets/images/nissanTitan.jpg',
    'assets/images/nissanTitan.jpg',
  ];
  List<String> _NissanSUV = [
    'assets/images/NissanArmada.jpg',
    'assets/images/NissanArmada.jpg',
    'assets/images/NissanArmada.jpg',
    'assets/images/NissanArmada.jpg',
    'assets/images/NissanArmada.jpg',
  ];
  List<String> _NissanVan = [
    'assets/images/nissan-urvan.jpg',
    'assets/images/nissan-urvan.jpg',
    'assets/images/nissan-urvan.jpg',
    'assets/images/nissan-urvan.jpg',
    'assets/images/nissan-urvan.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nissan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 1.0,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.height * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//listview car
              Text(
                'sportcar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _Nissan.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _Nissan[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Nissan GT-R nismo 2020',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '7,810,445 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
//listview Truck
              Text(
                'Truck',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _NissanTruck.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _NissanSUV[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Nissan Titan pro 4x 2022',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '2,242,436 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              //listview SUV
              Text(
                'SUV',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _NissanSUV.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _NissanSUV[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.18,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Nissan ARMADA SV',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  '2,020,620 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
//listview Van
              Text(
                'Van',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _NissanVan.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  _NissanVan[index],
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.cover,
                                ),
                                //title
                                Text(
                                  'Nissan Urvan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                                Text(
                                  ' 1,220,000 บาท',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}