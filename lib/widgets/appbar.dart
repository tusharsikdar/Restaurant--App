import 'package:flutter/material.dart';
import 'package:restaurent_app/data/data.dart';
import 'package:restaurent_app/designs/customtext.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange[400],
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.account_circle,size: 35,color: Colors.orange),
        ),
      ),
      title: CustomText(fontsize: 22, fontweigth: FontWeight.bold, color: Colors.white, text: 'Food Delivery'),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15,right: 10),
          child: CustomText(fontsize: 20, fontweigth: FontWeight.normal, color: Colors.white, text: '(${currentUser.cart!.length})'),
        )
      ],
    );
  }
}