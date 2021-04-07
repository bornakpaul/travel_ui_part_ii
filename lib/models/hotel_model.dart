import 'package:travel_ui_part_ii/models/activity_model.dart';

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,this.name,this.address,this.price
});
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/tajhotel.jpeg',
    name: 'Taj Hotel',
    address: 'Mumbai',
    price: 75,
  ),
  Hotel(
    imageUrl: 'assets/hoteljaipur.jpeg',
    name: 'Rambagh Palace',
    address: 'Jaipur',
    price: 90,
  ),
  Hotel(
    imageUrl: 'assets/hotel3.jpeg',
    name: 'Grand Hyatt',
    address: 'Goa',
    price: 65,
  ),
];