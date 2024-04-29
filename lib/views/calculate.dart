// ignore_for_file: unnecessary_import, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CarCalculateUI extends StatefulWidget {
  const CarCalculateUI({super.key});

  @override
  State<CarCalculateUI> createState() => _CarCalculateUIState();
}

class _CarCalculateUIState extends State<CarCalculateUI> {
  //radio group
  final formatter = NumberFormat('#,###');
  int _downSelected = 10;
//textfield ctrl
  TextEditingController priceCtrl = TextEditingController(text: '');
  TextEditingController interestCtrl = TextEditingController(text: '');
//List installment
  String _installSelected = '12 งวด(1ปี)';
  List<String> _installmentList = [
    '12 งวด(1ปี)',
    '24 งวด(2ปี)',
    '36 งวด(3ปี)',
    '48 งวด(4ปี)',
    '60 งวด(5ปี)',
    '72 งวด(6ปี)',
  ];
//validated
  warningMessage(context, msg) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'คำเตือน',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
              content: Text(
                msg,
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ตกลง',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'คำนวณค่างวดรถ',
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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
              vertical: MediaQuery.of(context).size.height * 0.06,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //logo
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13.0),
                    child: Image.asset(
                      'assets/images/logoAuto.jpg',
                      width: MediaQuery.of(context).size.width * 0.4,
                      // height: MediaQuery.of(context).size.height * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'ราคารถ (บาท)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                //textfield price car
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 40,
                  child: TextField(
                    controller: priceCtrl,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r"\d+([\.]\d+)?"))
                    ],
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // hintText: 'ป้อนจำนวนคน(คน)',
                      // prefixIcon: Icon(
                      //   Icons.person,
                      //   color: Colors.yellow,
                      // )
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'เงินดาวน์ (%)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
//Radio down
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 10,
                            groupValue: _downSelected,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.grey),
                            onChanged: (paramValue) {
                              setState(() {
                                _downSelected = paramValue!;
                              });
                            },
                          ),
                          Text(
                            '10%',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 20,
                            groupValue: _downSelected,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.grey),
                            onChanged: (paramValue) {
                              setState(() {
                                _downSelected = paramValue!;
                              });
                            },
                          ),
                          Text(
                            '20%',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 25,
                            groupValue: _downSelected,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.grey),
                            onChanged: (paramValue) {
                              setState(() {
                                _downSelected = paramValue!;
                              });
                            },
                          ),
                          Text(
                            '25%',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 30,
                            groupValue: _downSelected,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.grey),
                            onChanged: (paramValue) {
                              setState(() {
                                _downSelected = paramValue!;
                              });
                            },
                          ),
                          Text(
                            '30%',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Text(
                  'จำนวนปีที่ผ่อน',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
// list
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 1,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey), // เปลี่ยนสีขอบเป็น grey[600]
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: _installSelected,
                        onChanged: (paraValue) {
                          setState(() {
                            _installSelected = paraValue!;
                          });
                        },
                        items: _installmentList
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Row(
                                    children: [
                                      // Icon(
                                      //   Icons.holiday_village,
                                      //   color: Colors.purple,
                                      // ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            color: Colors.grey[
                                                600], // เปลี่ยนสีข้อความเป็น grey[600]
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                        isExpanded: true,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text(
                  'ดอกเบี้ย (%) ต่อปี',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: Colors.grey[600]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
//textfield Interest
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 40,
                  child: TextField(
                    controller: interestCtrl,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r"\d+([\.]\d+)?"))
                    ],
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // hintText: 'ป้อนจำนวนคน(คน)',
                      // prefixIcon: Icon(
                      //   Icons.person,
                      //   color: Colors.yellow,
                      // )
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.045,
                ),
//button cal
                ElevatedButton(
                  onPressed: () {
                    if (priceCtrl.text.length == 0) {
                      //display message num of price is not entered
                      warningMessage(context, 'ป้อนราคารถ(บาท)ด้วย');
                      return;
                    } else if (int.parse(priceCtrl.text) == 0) {
                      //display message value of price not 0
                      warningMessage(context, 'ป้อนราคารถ(บาท)ด้วย');
                      return;
                    } else if (interestCtrl.text.length == 0) {
                      //display number of people has not been entered
                      warningMessage(context, 'ป้อนดอกเบี้ย(%)ต่อปีด้วย');
                      return;
                    } else if (int.parse(interestCtrl.text) == 0) {
                      //display value of money not 0
                      warningMessage(context, 'ป้อนดอกเบี้ย(%)ต่อปีด้วย');
                      return;
                    }
                    double priceCar = 0, interest = 0;
                    //var for cal
                    priceCar = double.parse(priceCtrl.text);
                    interest = double.parse(interestCtrl.text);

                    int downPercent = 0;
                    double downPrice = 0;
                    //downPrice cal
                    if (_downSelected == 10) {
                      downPrice = priceCar * 0.1;
                      downPercent = 10;
                    } else if (_downSelected == 20) {
                      downPrice = priceCar * 0.2;
                      downPercent = 20;
                    } else if (_downSelected == 25) {
                      downPrice = priceCar * 0.25;
                      downPercent = 25;
                    } else {
                      downPrice = priceCar * 0.3;
                      downPercent = 30;
                    }

                    //financing cal
                    double financing = 0;
                    financing = priceCar - downPrice;

                    //interest
                    double Interest = 0;
                    Interest = financing * (interest / 100);
                    //Total interest and payment per month
                    double totalInterest = 0;
                    double PayPerMonth = 0;
                    int months = 0;
                    if (_installSelected == '12 งวด(1ปี)') {
                      totalInterest = Interest * 1;
                      PayPerMonth = (financing + totalInterest) / (1 * 12);
                      months = 12;
                    } else if (_installSelected == '24 งวด(2ปี)') {
                      totalInterest = Interest * 2;
                      PayPerMonth = (financing + totalInterest) / (2 * 12);
                      months = 24;
                    } else if (_installSelected == '36 งวด(3ปี)') {
                      totalInterest = Interest * 3;
                      PayPerMonth = (financing + totalInterest) / (13 * 12);
                      months = 36;
                    } else if (_installSelected == '48 งวด(4ปี)') {
                      totalInterest = Interest * 4;
                      PayPerMonth = (financing + totalInterest) / (4 * 12);
                      months = 48;
                    } else if (_installSelected == '60 งวด(5ปี)') {
                      totalInterest = Interest * 5;
                      PayPerMonth = (financing + totalInterest) / (5 * 12);
                      months = 60;
                    } else {
                      totalInterest = Interest * 6;
                      PayPerMonth = (financing + totalInterest) / (6 * 12);
                      months = 72;
                    }

                    //display
                    //display message
                    ShowPayment(context) {
                      String formattedpriceCar =
                          NumberFormat("#,###").format(priceCar);
                      String formatteddownPrice =
                          NumberFormat("#,###").format(downPrice);
                      String formattedPayPerMonth =
                          NumberFormat("#,###").format(PayPerMonth);
                      return showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Container(
                                  // height:MediaQuery.of(context).size.height * 0,
                                  // width:
                                  //     MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      'คำเตือน',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                  ),
                                ),
                                content: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: Column(
                                    children: [
                                      Text('รถราคา ${formattedpriceCar}บาท'),
                                      Text(
                                          'ดาวน์ ${downPercent}% เป็นเงิน ${formatteddownPrice} บาท'),
                                      Text('จำนวนเดือนผ่อน ${months} เดือน'),
                                      Text(
                                          'ค่าผ่อนต่อเดือน ${formattedPayPerMonth} บาท'),
                                    ],
                                  ),
                                ),
                                actionsAlignment: MainAxisAlignment.center,
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'ตกลง',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[400],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  )
                                ],
                              ));
                    }

                    ShowPayment(context);
                  },
                  child: Text(
                    'คำนวณค่างวดรถ',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.normal,
                        fontSize: MediaQuery.of(context).size.height * 0.03),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 1,
                        MediaQuery.of(context).size.height * 0.07,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
