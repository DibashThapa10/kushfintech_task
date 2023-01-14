import 'package:flutter/material.dart';

import '../model/location_model.dart';

class TravelWidget extends StatelessWidget {
  const TravelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SizedBox(
        height: size.height * 0.15,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: LocationModel.locationList.length,
          itemBuilder: (context, index) {
            var data = LocationModel.locationList[index];
            return LocationWidget(size: size, data: data);
          },
        ),
      ),
    );
  }
}

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key? key,
    required this.size,
    required this.data,
  }) : super(key: key);

  final Size size;
  final LocationModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: size.height * 0.12,
      child: Row(
        children: [
          Container(
            height: size.height * 0.12,
            width: size.width * 0.29,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(data.locationImage), fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.locationName,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "From",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      "\$ ${data.price}",
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Icon(
                      Icons.star_outlined,
                      color: Colors.amber,
                      size: 20,
                    ),
                    Text(
                      data.rating,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
