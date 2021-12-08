import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffB2DFDB),
        appBar: AppBar(
          backgroundColor: Color(0xff00796B),
          centerTitle: true,
          title: const Text(
            'Ne Yesem!',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(child: FoodList()),
      ),
    );
  }
}

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  int corbaNo = 1;
  int tatliNo = 1;
  int yemekNo = 1;
  List<String> corbaIsimleri = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuk Çorbası',
    'Mantar Çorbası',
    'Yoğurt Çorbası'
  ];
  List<String> yemekIsimleri = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Balık'
  ];
  List<String> tatliIsimleri = [
    'Baklava1',
    'Baklava2',
    'tatli1',
    'tatli2',
    'Dondurma'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Color(0xffB2DFDB),
                splashColor: Color(0xffB2DFDB),
                onPressed: () {
                  setState(() {
                    if (corbaNo < 5) {
                      corbaNo++;
                    } else {
                      corbaNo = 1;
                    }
                  });
                },
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(corbaIsimleri[corbaNo - 1]),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Color(0xff00796B),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Color(0xffB2DFDB),
                splashColor: Color(0xffB2DFDB),
                onPressed: () {
                  setState(() {
                    if (yemekNo < 5) {
                      yemekNo++;
                    } else {
                      yemekNo = 1;
                    }
                  });
                },
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(yemekIsimleri[yemekNo - 1]),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Color(0xff00796B),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Color(0xffB2DFDB),
                splashColor: Color(0xffB2DFDB),
                onPressed: () {
                  setState(() {
                    if (tatliNo < 5) {
                      tatliNo++;
                    } else {
                      tatliNo = 1;
                    }
                  });
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(tatliIsimleri[tatliNo - 1]),
          Container(
            width: 200,
            child: Divider(
              height: 6,
              color: Color(0xff00796B),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              highlightColor: Color(0xff009688),
              splashColor: Color(0xff009688),
              color: Color(0xff00796B),
              onPressed: () {
                setState(() {
                  corbaNo = Random().nextInt(5) + 1;
                  tatliNo = Random().nextInt(5) + 1;
                  yemekNo = Random().nextInt(5) + 1;
                });
              },
              child: const Text(
                'Rastgele Seçim Yap',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
