import 'package:flutter/material.dart';
import 'package:restaurent_app/designs/customtext.dart';
import 'package:restaurent_app/models/restaurant.dart';

class SingleScreen extends StatelessWidget {
  const SingleScreen({Key? key,required this.restaurant}) : super(key: key);
  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: restaurant,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('${restaurant.imageUrl}')
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       IconButton(
                         onPressed: (){
                           Navigator.of(context).pop();
                         },
                         icon:Icon(Icons.arrow_back,size: 40),
                         color: Colors.white),
                       Icon(Icons.favorite,color: Colors.redAccent,size: 45)],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(fontsize: 20, fontweigth: FontWeight.bold, color: Colors.black, text: '${restaurant.name}'),
                      CustomText(fontsize: 20, fontweigth: FontWeight.bold, color: Colors.black, text: '${restaurant.address}'),
                    ],
                  ),
                  CustomText(fontsize: 20, fontweigth: FontWeight.bold, color: Colors.black, text: '0.2 Miles'),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style:ElevatedButton.styleFrom(primary: Colors.deepOrange),
                      onPressed: (){}, child: Text('Review',style: TextStyle(fontSize: 20))),
                  ElevatedButton(
                      style:ElevatedButton.styleFrom(primary: Colors.deepOrange),
                      onPressed: (){}, child: Text('Contact',style: TextStyle(fontSize: 20))),
                ],
              ),
            ),
            CustomText(fontsize: 25, fontweigth: FontWeight.bold, color: Colors.black, text: 'Menu'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,

                  itemCount: restaurant.menu!.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('${restaurant.menu![index].imageUrl}')
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.3),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) )
                                ),
                                height: 60,
                              ),
                              Positioned(left:20,bottom:30, child: CustomText(fontsize: 15, fontweigth: FontWeight.bold, color: Colors.white, text: '${restaurant.menu![index].name}')),
                              Positioned(left:20,bottom:10,child: CustomText(fontsize: 15, fontweigth: FontWeight.bold, color: Colors.white, text: '${restaurant.menu![index].price}')),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}