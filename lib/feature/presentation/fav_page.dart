import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/components/card_display.dart';
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
      ]),
    );
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   body: Center(
    //       child: Padding(
    //     padding: const EdgeInsets.only(top: 38),
    //     child: SizedBox(
    //       width: 340,
    //       child: CardsInfo(
    //         area: "Karakol, Issyk-Kol",
    //         placeName: "Peak Karakol",
    //         img: Images.image1,
    //         price: "\$550",
    //         onPressed: () {
    //           Navigator.push(context,
    //               MaterialPageRoute(builder: (context) => const Placeholder()));
    //         },
    //       ),
    //       // child: ListView.separated(
    //       //     itemBuilder: (context, index) {
    //       //       return CardsInfo(
    //       //         placeName: places[index],
    //       //         img: img[index],
    //       //         price: price[index],
    //       //         area: area[index],
    //       //         customOnPressed: () {
    //       //           Navigator.push(
    //       //               context,
    //       //               MaterialPageRoute(
    //       //                   builder: (context) => const Placeholder()));
    //       //         },
    //       //         onPressed: () {
    //       //           Navigator.push(
    //       //               context,
    //       //               MaterialPageRoute(
    //       //                   builder: (context) => const Placeholder()));
    //       //         },
    //       //       );
    //       //     },
    //       //     separatorBuilder: (context, index) {
    //       //       return const SizedBox(
    //       //         height: 14,
    //       //       );
    //       //     },
    //       //     itemCount: places.length),
    //     ),
    //   )),
    // );
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
