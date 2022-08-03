import 'package:flutter/material.dart';
import 'package:restaurent_app/designs/customtext.dart';
import 'package:restaurent_app/widgets/appbar.dart';
import 'package:restaurent_app/widgets/nearbyrestaurants.dart';
import 'package:restaurent_app/widgets/recentorders.dart';
import 'package:restaurent_app/widgets/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: CustomAppBar()
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20),
            child: CustomText(fontsize: 25, fontweigth: FontWeight.bold, color: Colors.black, text: 'Recent Orders'),
          ),
          RecentOrders(),
          Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 10,left: 20),
            child: CustomText(fontsize: 25, fontweigth: FontWeight.bold, color: Colors.black, text: 'Nearby Restaurant'),
          ),
          NearbyRestaurant()

        ],
      ),
    );
  }
}