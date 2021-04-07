import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui_part_ii/models/destination_model.dart';
import 'package:travel_ui_part_ii/screens/destination_screen.dart';

class destination_carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Top Destination", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
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
            itemCount: destinations.length,
            itemBuilder: (BuildContext,int index){
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => destination_screen(destination: destination,))),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 200.0,
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
                          width: 200.0,
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
                                Text('${destination.activities.length} activities',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600,letterSpacing: 1.0),),
                                Text('${destination.description}', style: TextStyle(color: Colors.grey[500]),),
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
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: destination.imageUrl,
                              child: ClipRRect(
                                child: Image(
                                  height: 180.0,
                                  width: 190.0,
                                  image: AssetImage(destination.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                                bottom: 10.0,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(destination.city,style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w500),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on_rounded, size: 15.0,color: Colors.white,),
                                    Text(destination.country,style: TextStyle(color: Colors.white),),
                                ],
                              )
                          ],
                        ),
                            ),
                      ]
                        )
                )],
                  ),
                ),
              );
         },
        )
        )
      ],
    );
  }
}
