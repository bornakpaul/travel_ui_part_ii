import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui_part_ii/models/destination_model.dart';
import 'package:travel_ui_part_ii/models/hotel_model.dart';

class hotel_carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Best Hotels", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
            RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "See all",
                          style: TextStyle(color: Colors.blue,fontSize: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // write the code here for see all functionality
                              // print("see all");
                            }
                      )
                    ]
                )
            )
          ],),
        SizedBox(height: 10.0,),
        Container(
            height: 310.0,
            //color: Colors.blue,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: (BuildContext,int index){
                Hotel hotel = hotels[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 280.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0.0,2.0),blurRadius: 2.0)]
                  ),
                  //color: Colors.lightBlue,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 5.0,
                        child: Container(
                          height: 120.0,
                          width: 280.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('${hotel.name}',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600,letterSpacing: 0.5),),
                                SizedBox(height: 2.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('${hotel.address}', style: TextStyle(fontSize:18,color: Colors.grey[500]),),
                                    Text('\$${hotel.price}/day', style: TextStyle(fontSize:16,color: Colors.grey[500]),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0.0,2.0),blurRadius: 7.0)]
                          ),
                          child: ClipRRect(
                            child: Image(
                              height: 210.0,
                              width: 280.0,
                              image: AssetImage(hotel.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          )
                      )],
                  ),
                );
              },
            )
        ),
      ],
    );
  }
}
