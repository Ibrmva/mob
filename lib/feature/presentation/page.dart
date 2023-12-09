import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/components/list_btn.dart';
import 'package:flutter_application_1/feature/presentation/components/card_display.dart';
import 'package:flutter_application_1/resources/resources.dart';
import 'package:flutter_application_1/feature/presentation/hotels.dart';

class ListItemsPage extends StatefulWidget {
  const ListItemsPage({super.key});

  @override
  State<ListItemsPage> createState() => _ListItemsPageState();
}

class _ListItemsPageState extends State<ListItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        endDrawer: SafeArea(
          child: Drawer(
            width: double.infinity,
            backgroundColor: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton( 
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      ListBtn(onPressed: () {}, text: "High walk"),
                      const Divider(
                        color: Colors.white,
                      ),
                      ListBtn(onPressed: () {}, text: "Flights"),
                      const Divider(
                        color: Colors.white,
                      ),
                      ListBtn(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Hotels()));
                          },
                          text: "Hotels"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text(
            "Hello",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center( 
          child: Padding(
            padding: const EdgeInsets.only(top: 38),
            child: SizedBox(
              width: 340,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CardsInfo(
                      placeName: places[index],
                      img: img[index],
                      price: price[index],
                      area: area[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 14,
                    );
                  },
                  itemCount: places.length),
            ),
          ),
        ));
  }

  List<String> places = [
    "Peak Karakol",
    "Kel Suu",
    "Maison",
    "Olimp",
    "Son Kol"
  ];
  List<String> area = [
    "Karakol, Issyk-Kol",
    "Ak-Sai Valley, Naryn",
    "Bosteri, Issyk-Kol",
    "Cholpon - Ata, Issyk-Kol",
    "Naryn"
  ];
  //List<String> date = ["march 27 - 29, 2024", "march 27 - 29, 2024", "Maison", "Olimp", "Son Kol"];
  List<String> img = [
    Images.image1,
    Images.image2,
    Images.image3,
    Images.image4,
    Images.image4
  ];
  List<String> price = ["\$550", "\$560", "\$1,450", "\$1,590", "\$2,530"];
}
