import 'package:flutter/material.dart';
import 'package:restaurent_app/data/data.dart';
import 'package:restaurent_app/designs/customtext.dart';
import 'package:restaurent_app/screen/singlescreen.dart';

class NearbyRestaurant extends StatelessWidget {
  const NearbyRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingleScreen(restaurant: restaurants[index]),));

            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Hero(
                      tag: restaurants[index],
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('${restaurants[index].imageUrl}')
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex:2,child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(fontsize: 17, fontweigth: FontWeight.bold, color: Colors.black.withOpacity(0.5), text: '${restaurants[index].name}'),
                        CustomText(fontsize: 15, fontweigth: FontWeight.bold, color: Colors.black.withOpacity(0.5), text: '${restaurants[index].address}'),
                        CustomText(fontsize: 15, fontweigth: FontWeight.bold, color: Colors.black.withOpacity(0.5), text: '${restaurants[index].rating}'),
                      ],),
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}