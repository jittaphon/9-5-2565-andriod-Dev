import 'package:flutter/material.dart';
import 'package:plantsapp/constant.dart';

class TitleWithMoreBth extends StatelessWidget {
  const TitleWithMoreBth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomerUnderline(text:"Recommend"),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: (){}, 
            child: Text("More",style: TextStyle(color:Colors.white)))
        ],
      ),
    );
  }
}

class TitleWithCustomerUnderline extends StatelessWidget {
  const TitleWithCustomerUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding/4),
          child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom:0,
          left: 0,
          right: 0,
          child: Container(
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),))
      ]),
    );
  }
}