import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui_part_ii/models/activity_model.dart';
import 'package:travel_ui_part_ii/models/destination_model.dart';

class destination_screen extends StatefulWidget {

  final Destination destination;

  destination_screen({this.destination});

  @override
  _destination_screenState createState() => _destination_screenState();
}

class _destination_screenState extends State<destination_screen> {

  _buildRatingStars(int rating){
    String stars = '';
    for (int i = 0; i < rating; i++){
      stars += '⭐️ ';
    }
    return Text(stars);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0,2.0),
                        blurRadius: 6.0
                    )
                  ]
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      height: MediaQuery.of(context).size.width,
                      image: AssetImage(widget.destination.imageUrl
                      ),
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_rounded),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                          icon: Icon(Icons.filter_list_rounded),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.destination.city,style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w600),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on_rounded, size: 20.0,color: Colors.white70,),
                        Text(widget.destination.country,style: TextStyle(color: Colors.white70,fontSize: 20.0,),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
              itemCount: widget.destination.activities.length,
                itemBuilder: (BuildContext context, int index){
                Activity activity = widget.destination.activities[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0,20.0,20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(activity.name,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w500),),
                                  Column(
                                      children: <Widget>[
                                        Text('\$ ${activity.price}',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
                                        Text('per pax',style: TextStyle(fontSize: 13.0,color: Colors.grey[400]),)
                                      ],

                                  ),
                                ],
                              ),
                              Text(activity.type,style: TextStyle(color: Colors.grey[600]),),
                              _buildRatingStars(activity.rating),
                              SizedBox(height: 10.0,),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(activity.startTimes[0]),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).accentColor,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(activity.startTimes[1]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom:15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            width: 110.0,
                            image: AssetImage(activity.imageUrl),
                            fit: BoxFit.cover,
                          ),

                        ),
                      )
                    ],
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
