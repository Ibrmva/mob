import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/feature/presentation/components/list_btn.dart';
import 'package:flutter_application_1/feature/presentation/components/sign_in_btn.dart';
import 'package:flutter_application_1/feature/presentation/fav_page.dart';
import 'package:flutter_application_1/resources/resources.dart';
import 'package:flutter_svg/svg.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Hotels',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Image.asset(Images.image5),
                const SizedBox(
                  height: 43,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Who are we?\nAnd what is Maison?",
                      style: TextStyle(color: Colors.white),
                    ),
                    Image.asset(
                      Images.image6,
                      width: 85,
                      height: 95,
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                const SizedBox(
                  width: 330,
                  child: Text(
                    """Maison is a new, modern club hotel located 150 meters from the beach of the high mountain, crystal clear lake Issyk-Kul, in the village of Bosteri - in the center of the resort area. We do not have our own beach, but we are very close to the beach of the resort town and the beach of the Golden Sands boarding house.
                      \nThe best restaurants, cafes and clubs of Bosteria are within walking distance.
                      \nThis is the perfect place to relax for you and your family. We are waiting for you to visit, to accumulate memories in your memory piggy bank.""",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Images.image7,
                      width: 95,
                      height: 95,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text(
                              "Maison\nHOTEL & RESTAURANT\nOur hotel is located just a five-minute walk from the beach so you can immerse yourself in fresh waters and indulge in the sunshine. Don't worry about water and electricity - we have an uninterrupted supply!",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Booking",
                      style: TextStyle(color: Colors.white),
                    ),
                    Image.asset(
                      Images.image9,
                      width: 140.78,
                      height: 85,
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                const SizedBox(
                  width: 330,
                  child: Text(
                    """Booking and accommodation at the Maison Hotel is in accordance with international standards.
                      \nCheck-in time is 13 hours
                      \nCheck-out time is 12 hours
                      \nEarly check-in is possible only subject to availability and at no extra charge.
Late check-out, after 12:00 to 00:00, is regarded as 50% of the room rate.
                      \nCheck availability, make a prepayment to your Optima Bank account or card and anticipate a trip to Issyk-Kul.
Have a good rest!""",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 11, right: 200),
                    child: SignInBtn(onPressed: () {}, text: "Booking")),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Images.location),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          """Location\nNear to the Ferris Wheel, \n p. Bosteri""",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        const SizedBox(
                          width: 17,
                          height: 17,
                        ),
                        Image.asset(
                          Images.image10,
                          width: 99.5,
                          height: 85,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Images.image11,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    const SizedBox(
                      width: 150,
                      child: Text(
                        """Now or never!\nHurry up and catch a ticket for a happy summer,\njump into the car and\ncome to the Maison Hotel to live the brightest moments of this summer 
\nAnd we will be happy to help you with this\n\nContacts:\n+996 501 799 977\ninstagram:\nmaison.ik""",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
