import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math' as math;

import 'home_components/address_form.dart';
import 'home_components/switch_components.dart';
import 'home_components/travel_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? chooseDate;
  late String confirmedDate;
  late TextEditingController startpoint;
  late TextEditingController destination;
  bool _switchValue = false;
  @override
  void initState() {
    startpoint = TextEditingController();
    destination = TextEditingController();
    confirmedDate = 'Choose Date';
    super.initState();
  }

  @override
  void dispose() {
    startpoint.dispose();
    destination.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final height = size.height;
    final width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 254, 251, 251).withOpacity(0.98),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height * 0.37,
                    color: const Color.fromARGB(255, 10, 51, 69),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Uptrain",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Book your next train!",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    const Color.fromARGB(255, 112, 108, 108),
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundColor:
                                      const Color.fromARGB(255, 10, 51, 69),
                                  child: Stack(
                                    children: const [
                                      Icon(Icons.notifications_outlined),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 13, top: 2),
                                        child: CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Row(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.29,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons
                                          .keyboard_double_arrow_right_outlined),
                                      Text(
                                        "One Way",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.34,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(
                                        Icons.autorenew_outlined,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "Round trip",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
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
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.03,
                      horizontal: size.width * 0.05,
                    ),
                    margin: EdgeInsets.only(
                      top: size.height * 0.2,
                      left: size.height * 0.025,
                      right: size.height * 0.03,
                    ),
                    height: height * 0.4,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: ContainerWidget(
                                addressController: startpoint,
                                size: size,
                                icons: Icons.train_outlined,
                                hinttext: "From",
                              ),
                            ),
                            Positioned(
                                left: 0,
                                top: 50,
                                right: -size.width * 0.6,
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 248, 241, 241),
                                  child: Transform.rotate(
                                      angle: 90 * math.pi / 180,
                                      child: const Icon(
                                          Icons.compare_arrows_outlined)),
                                )),
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: ContainerWidget(
                                  addressController: destination,
                                  size: size,
                                  icons: Icons.train_outlined,
                                  hinttext: "To"),
                            ),
                            Positioned(
                                left: 0,
                                top: -18,
                                right: -size.width * 0.6,
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 248, 241, 241),
                                  child: Transform.rotate(
                                      angle: 90 * math.pi / 180,
                                      child: const Icon(
                                          Icons.compare_arrows_outlined)),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () async {
                            chooseDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2050));
                            String formatedDate =
                                '${DateFormat.E().format(chooseDate!)},${DateFormat.MMM().format(chooseDate!)},${DateFormat.d().format(chooseDate!)}';
                            setState(() {
                              confirmedDate = formatedDate;
                            });
                          },
                          child: Container(
                            height: size.height * 0.06,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 237, 221, 221),
                                  width: 0.8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.grey,
                                ),
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
                                Text(
                                  confirmedDate,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 135,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Return?",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      CustomSwitch(
                                        value: _switchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            _switchValue = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize:
                                    Size(size.width * 0.8, size.height * 0.06),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {},
                            child: const Text(
                              "Search Train",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular Routes",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const TravelWidget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.grey,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.confirmation_num_outlined,
                  color: Colors.grey,
                ),
                label: 'My Ticket'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
          fixedColor: Colors.black87,
        ),
      ),
    );
  }
}
