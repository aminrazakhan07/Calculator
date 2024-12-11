// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({super.key});

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: 40),
          Icon(
            Icons.offline_bolt,
            color: Colors.orange,
            size: 40,
          ),
          SizedBox(height: 40),
          Center(
            child: Text(
              'Electricity Bill',
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'Calculator',
              style: TextStyle(
                fontSize: 30,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 28),
            child: Center(
              child: Text(
                'Enter your bill amount',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              'KW',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.double_arrow_sharp,
                    color: Colors.black.withOpacity(0.4), size: 20),
                labelText: 'Enter units of bill (KW)',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.4),
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
                labelStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              'Rate',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.double_arrow_sharp,
                    color: Colors.black.withOpacity(0.4), size: 20),
                labelText: 'Enter rate per units',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.4),
                )),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
                labelStyle: TextStyle(color: Colors.orange),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 28),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.orange,
            ),
            child: Center(
              child: Text(
                'Calculate',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 28),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.orange.withOpacity(0.6)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Bill',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1Rs 0.00',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Text(
                    'Issued in public interest by ministry of flutter with fun affairs.',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
