import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({Key? key}) : super(key: key);

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  TextEditingController quality =
      TextEditingController(); // รับค่าจะ keyboard เเละมันมีอีกอันที่สามารตั้งค่าเริ่มต้นได้เลย คือ var price = 50 เป็นต้น
  TextEditingController price = TextEditingController();
  TextEditingController result = TextEditingController();

  @override // สร้างตัว state มาเพื่อเเสดงผลใน หน้าจอ app
  void initState() {
    super.initState();
    result.text = "by 5 Apples , 10 THB per an Apple , We have to pay 100 THB";
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "3.jpg",
                  width: 200,
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Calculate Program",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.red,
                        fontStyle: FontStyle.italic)),
                TextField(
                    controller: quality,
                    decoration: InputDecoration(
                      labelText: "Each Amount",
                      border: OutlineInputBorder(),
                      fillColor: Colors.red,
                    )),
                SizedBox(
                  height: 50,
                ),
                TextField(
                    controller: price,
                    decoration: InputDecoration(
                      labelText: "Each Price",
                      border: OutlineInputBorder(),
                      fillColor: Colors.red,
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    var cal = double.parse(quality.text) *
                        double.parse(price.text); // คำนวณ
                    print(
                        "Flower qunlity : ${quality.text} , so Total ${cal} BTH"); // เช็คค่าที่ console

                    setState(() {
                      result.text =
                          "Flower qunlity : ${quality.text} , each cost ${price.text} so Total ${cal} BTH";
                    });
                  },
                  child: Text("Calculate"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF42A5F5)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(50, 20, 50, 20)),
                      textStyle:
                          MaterialStateProperty.all((TextStyle(fontSize: 30)))),
                ),
                SizedBox(height: 20),
                Text(result.text)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
