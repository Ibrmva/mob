import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/components/card_display_hotels.dart';
import 'package:flutter_application_1/resources/resources.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
        CardsInfo(
          area: "Karakol, Issyk-Kol",
          placeName: "Peak Karakol",
          img: Images.image1,
          price: "\$550",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Placeholder()));
          },
        ),
        const SizedBox(
          height: 10,
        ),
                CardsInfo(
          area: "Ak-Sai Valley, Naryn",
          placeName: "Kel Suu",
          img: Images.image2,
          price: "\$560",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Placeholder()));
          },
        ),
        const SizedBox(
          height: 10,
        ),
                CardsInfo(
          area: "Bosteri, Issyk-Kol",
          placeName: "Maison",
          img: Images.image1,
          price: "\$1,450",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Placeholder()));
          },
        ),
        const SizedBox(
          height: 10,
        ),
                CardsInfo(
          area: "Cholpon - Ata, Issyk-Kol",
          placeName: "Olimp",
          img: Images.image1,
          price: "\$1,590",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Placeholder()));
          },
        ),
        const SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}

List<String> places = ["Peak Karakol", "Kel Suu", "Maison", "Olimp", "Son Kol"];
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
