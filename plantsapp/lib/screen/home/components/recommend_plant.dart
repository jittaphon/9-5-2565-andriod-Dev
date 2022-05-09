import 'package:flutter/material.dart';
import 'package:plantsapp/constant.dart';
import 'package:plantsapp/screen/home/components/header_with_searchbox.dart';
import 'package:plantsapp/screen/home/components/title_with_more_bth.dart';


class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantsCard(
            image: "assets/images/image_1.png",
            title: "Ching Mai",
            country: "Thailand",
            price: 440,
            press: (){},
          ),
           RecommendPlantsCard(
            image: "assets/images/image_2.png",
            title: "Soul",
            country: "korea",
            price: 440,
            press: (){},
          ),
           RecommendPlantsCard(
            image: "assets/images/image_3.png",
            title: "Tokyo",
            country: "Japan",
            price: 1200,
            press: (){},
          ),
        ],
      ),
    );
  }
}


class RecommendPlantsCard extends StatelessWidget {
  const RecommendPlantsCard({
    Key? key, required this.image , required this.country ,required this.press , required this.price , required this.title 
  }) : super(key: key);

final  String image, title,country;
final int price ;
final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom:  kDefaultPadding*2.5),

      width: size.width *0.4, //40% of  total width
      child: Column(children: [
        Image.asset(image),
         GestureDetector(
           onTap: press(),
           child: Container(
               padding: EdgeInsets.all(kDefaultPadding / 2),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
                 ),
                 boxShadow: [
            BoxShadow(
              offset: Offset(0,10),
              blurRadius: 50,
              color: kPrimaryColor.withOpacity(0.23)
            )
                 ]
               ),
               child: Row(
                 children: [
            RichText(text: TextSpan(children: [
              TextSpan(
                text: "$title\n".toUpperCase(),
                style: Theme.of(context).textTheme.button
              ), 
              TextSpan(
                text: " $country\n".toUpperCase(),
                style: TextStyle(color: kPrimaryColor.withOpacity(0.5))
              )
            ])),
            Spacer(),
            Text('\$$price',style: Theme.of( context).textTheme.button!.copyWith(color:kPrimaryColor),)
         
                 ],
               ),
              
             ),
         )
      ],),
    );
  }
}
