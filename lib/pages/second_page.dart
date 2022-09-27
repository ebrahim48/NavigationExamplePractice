import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  static const String routeName = '/second';
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}
class _SecondPageState extends State<SecondPage> {
  late num message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1)
                  ),
                  height: 50,
                  child: Text("Category"),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1)
                  ),
                  height: 50,
                  child: Text("BMI (kg/m2)[c]"),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1)
                  ),
                  height: 50,
                  child: Text("BMI Prime[c]"),
                ),
              ),
            ],
          ),
          Container(
            color:  message<16? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),
                    height: 50,
                    child: Text("Underweight (Severe thinness)", textAlign: TextAlign.center,),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("< 16.0"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("< 0.64"),

                  ),
                ),
              ],
            ),
          ),
          Container(
            color:  message>16 && message <16.9? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("Moderate Moderate  (Severe thinness)", textAlign: TextAlign.center,),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("16.0 – 16.9"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("0.64 – 0.67"),

                  ),
                ),

              ],
            ),
          ),
          Container(
            color:  message>17.0 && message <18.4? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("Underweight (Mild thinness)", textAlign: TextAlign.center,),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("17.0 – 18.4"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("0.68 – 0.73"),

                  ),
                ),

              ],
            ),
          ),
          Container(
            color:  message>18.5 && message <24.9? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("Normal range", textAlign: TextAlign.center,),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("18.5 – 24.9"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("	0.74 – 0.99"),

                  ),
                ),

              ],
            ),
          ),
          Container(
            color:  message>25.0 && message <29.9? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("Overweight (Pre-obese)", textAlign: TextAlign.center,),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("25.0 – 29.9"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("	1.00 – 1.19"),

                  ),
                ),

              ],
            ),
          ),
          Container(
            color:  message>30.0 && message <30.9? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("Obese (Class I)", textAlign: TextAlign.center,),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("30.0 – 34.9"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("1.20 – 1.39"),

                  ),
                ),

              ],
            ),
          ),
          Container(
            color:  message>35.0 && message <39.9? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("Obese (Class II)", textAlign: TextAlign.center,),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("35.0 – 39.9"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("1.40 – 1.59"),

                  ),
                ),

              ],
            ),
          ),
          Container(
            color:  message>=40.0 ? Colors.green:Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("Obese (Class III)", textAlign: TextAlign.center,),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("≥ 40.0"),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1)
                    ),

                    height: 50,
                    child: Text("≥ 1.60"),


                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void didChangeDependencies() {
    print("didchange");
    message = ModalRoute.of(context)!.settings.arguments as num;
    super.didChangeDependencies();
  }

}
