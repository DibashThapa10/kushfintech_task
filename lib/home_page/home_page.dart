import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final height = size.height;
    final width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.4,
                  color: const Color.fromARGB(255, 10, 51, 69),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Uptrain",
                              style: TextStyle(color: Colors.amber),
                            ),
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 88, 88, 87),
                              radius: 25,
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor:
                                    Color.fromARGB(255, 10, 51, 69),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
