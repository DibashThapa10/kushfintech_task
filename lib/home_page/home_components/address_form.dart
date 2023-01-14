import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {Key? key,
      required this.size,
      required this.addressController,
      required this.icons,
      required this.hinttext})
      : super(key: key);

  final Size size;
  final IconData icons;
  final String hinttext;
  final TextEditingController? addressController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: addressController,
      style: const TextStyle(
          color: Color.fromARGB(255, 10, 51, 69),
          fontWeight: FontWeight.w600,
          fontSize: 15),
      decoration: InputDecoration(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.train_outlined),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 1.5,
                height: 20,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          hintText: hinttext,
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  width: 1, color: Color.fromARGB(255, 237, 221, 221))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  width: 1, color: Color.fromARGB(255, 237, 221, 221)))),
    );
  }
}
