import 'package:flutter/material.dart';

class ContractPage extends StatefulWidget {
  const ContractPage({Key? key}) : super(key: key);

  @override
  State<ContractPage> createState() => _ContractPageState();
}

class _ContractPageState extends State<ContractPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
            child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text("AJ Tui"),
            Text("@camt: Room 414")
          ],
        ))
      ],
    );
  }
}
