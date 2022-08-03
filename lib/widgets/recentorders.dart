import 'package:flutter/material.dart';
import 'package:restaurent_app/data/data.dart';
import 'package:restaurent_app/designs/customtext.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        height: 140,
        child: ListView.builder(
          itemCount: currentUser.orders!.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.only(right: 10),
              width: 300,
              child: Row(
                children: [
                  Expanded(
                      flex:5,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('${currentUser.orders![index].food!.imageUrl}')
                            ),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                        ),
                      )),
                  Expanded(
                      flex:4,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(fontsize: 17, fontweigth: FontWeight.bold, color: Colors.black.withOpacity(0.5), text: '${currentUser.orders![index].food!.name}'),
                            CustomText(fontsize: 15, fontweigth: FontWeight.bold, color: Colors.black.withOpacity(0.5), text: '${currentUser.orders![index].restaurant!.name}'),
                            CustomText(fontsize: 12, fontweigth: FontWeight.bold, color: Colors.black.withOpacity(0.5), text: '${currentUser.orders![index].date}'),
                          ],),
                        decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.5),
                        ),
                      )),
                  Expanded(
                      flex:2,
                      child: Container(
                        padding: EdgeInsets.only(right: 15),
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.5),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.deepOrange[300],
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      )),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}