import 'package:travel_ui_part_ii/models/activity_model.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({this.imageUrl,this.city,this.country,this.description,this.activities});

}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/guwahati.jpeg',
    name: 'Guwahati',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am',"11:00 am"],
    rating: 3,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/sikkim.jpeg',
    name: 'Sikkim',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am',"1:00 pm"],
    rating: 5,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/bangalore.jpeg',
    name: 'Bengaluru',
    type: 'Sightseeing Tour',
    startTimes: ['6:00 pm',"10:00 pm"],
    rating: 4,
    price: 50,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/kolkata.jpeg',
    city: 'Kolkata',
    country: 'India',
    description: 'Visit Kolkata for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/delhi.jpeg',
    city: 'Agra',
    country: 'India',
    description: 'Visit Agra for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/bangalore.jpeg',
    city: 'Bangalore',
    country: 'India',
    description: 'Visit Bangalore for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/sikkim.jpeg',
    city: 'Sikkim',
    country: 'India',
    description: 'Visit Sikkim for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/goa.jpeg',
    city: 'Goa',
    country: 'India',
    description: 'Visit Goa for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/guwahati.jpeg',
    city: 'Guwahati',
    country: 'India',
    description: 'Visit Guwahati for an amazing and unforgettable adventure',
    activities: activities,
  ),


];