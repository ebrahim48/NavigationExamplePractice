import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/pages/second_page.dart';
class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  double sliderValue = 50.0;
  double slider2Value = 1.5;
  num _result = 0;
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "weight",
                  style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                )),
            Text(
              "${sliderValue.toStringAsFixed(1)} kg",
              style: TextStyle(fontSize: 40),
            ),
            Slider(
                min: 20,
                max: 120,
                activeColor: Colors.blue,
                inactiveColor: Colors.greenAccent,
                divisions: 1000,
                label: sliderValue.toStringAsFixed(1),
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                    getResult(sliderValue, slider2Value);
                  });
                }),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Height",
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                )),
            Text(
              "${slider2Value.toStringAsFixed(2)} m",
              style: TextStyle(fontSize: 40),
            ),
            Slider(
                min: 1.2,
                max: 2.2,
                activeColor: Colors.orangeAccent,
                inactiveColor: Colors.green,
                divisions: 100,
                label: slider2Value.toStringAsFixed(2),
                value: slider2Value,
                onChanged: (value) {
                  setState(() {
                    slider2Value = value;
                    getResult(sliderValue, slider2Value);
                  });
                }),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.purple,
              child: Text(
                "${_result.toStringAsFixed(2)}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25),
            ),
            Spacer(),
            Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SecondPage.routeName, arguments: _result);
                    }, child: Text("View Details")))
          ],
        ),
      ),
    );
  }

  void getResult(double _weight, double _height) {
    setState(() {
      num dev = pow(_height, 2);
      _result = _weight / dev;
      getTitle();
    });
  }

  void getTitle() {
    if (_result < 16.0 ) {
      title = "Underweight (Severe thinness)";
    }
    else if (_result > 16.0 && _result < 16.9) {
      title = "Underweight (Moderate thinness";
    }

    else if (_result > 17.0 && _result < 18.4) {
      title = "Underweight (Mild thinness)";
    }

    else if (_result > 18.5 && _result < 24.9) {
      title = "Normal";
    } else if (_result > 25.0 && _result < 29.9) {
      title = "Overweight";
    } else if (_result > 30.0 && _result < 34.9) {
      title = "Obese (Class I)";
    } else if (_result > 35.0 && _result < 39.9) {
      title = "Obese (Class II)";
    } else if (_result > 40.0) {
      title = "Obese (Class III)";
    }
  }
}
