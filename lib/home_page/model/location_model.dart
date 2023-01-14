import 'package:trainbooking_ui/utils/appconstant_data.dart';

class LocationModel {
  final String locationImage;
  final String locationName;
  final String rating;
  final String price;

  LocationModel(
      {required this.locationImage,
      required this.locationName,
      required this.rating,
      required this.price});

  static List<LocationModel> locationList = [
    LocationModel(
        locationImage: paris,
        locationName: "London to Paris",
        rating: "4.5",
        price: "39.74"),
    LocationModel(
        locationImage: maldives,
        locationName: "London to Maldives",
        rating: "4.2",
        price: "49.99")
  ];
}
