import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/components/list_btn.dart';
import 'package:flutter_application_1/feature/presentation/components/card_display.dart';
import 'package:flutter_application_1/resources/resources.dart';
import 'package:flutter_application_1/feature/presentation/hotels.dart';
import 'package:flutter_application_1/feature/presentation/fav_page.dart';

class ListItemsPage extends StatefulWidget {
  const ListItemsPage({super.key});

  @override
  State<ListItemsPage> createState() => _ListItemsPageState();
}

class _ListItemsPageState extends State<ListItemsPage> {
  // int _currentIndex = 0;
  // final List<Widget> _pages = [
  //   const Hotels(),
  //   const Placeholder(),
  //   // Add more pages as needed
  // ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My App'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text('Home'),
//               onTap: () {
//                 // Navigate to the corresponding page when a drawer item is tapped
//                 _navigateToPage(0);
//               },
//             ),
//             ListTile(
//               title: const Text('Settings'),
//               onTap: () {
//                 // Navigate to the corresponding page when a drawer item is tapped
//                 _navigateToPage(1);
//               },
//             ),
//             // Add more drawer items as needed
//           ],
//         ),
//       ),
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _navigateToPage,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//           // Add more BottomNavigationBarItems as needed
//         ],
//       ),
//     );
//   }

//   void _navigateToPage(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//     Navigator.pop(context); // Close the drawer if open
//   }
// }
  // @override
  // Widget build(BuildContext context) {
  //   Widget page;
  //   switch (selectedIndex) {
  //     case 0:
  //       page = const Hotels();
  //     case 1:
  //       page = const FavPage();
  //     case 2:
  //       page = const Placeholder();
  //     default:
  //       throw UnimplementedError('no widget for $selectedIndex');
  //   }
  //   return Scaffold(
  //     backgroundColor: Colors.black,
  //     endDrawer: SafeArea(
  //       child: Drawer(
  //         width: double.infinity,
  //         backgroundColor: Colors.black,
  //         child: Column(
  //           children: [
  //             Row(
  //               children: [
  //                 IconButton(
  //                     onPressed: () {
  //                       Navigator.pop(context);
  //                     },
  //                     icon: const Icon(
  //                       Icons.close,
  //                       color: Colors.white,
  //                     ))
  //               ],
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.symmetric(horizontal: 30),
  //               child: Column(
  //                 children: [
  //                   ListBtn(onPressed: () {}, text: "High walk"),
  //                   const Divider(
  //                     color: Colors.white,
  //                   ),
  //                   ListBtn(onPressed: () {}, text: "Flights"),
  //                   const Divider(
  //                     color: Colors.white,
  //                   ),
  //                   ListBtn(
  //                       onPressed: () {
  //                         Navigator.push(
  //                             context,
  //                             MaterialPageRoute(
  //                                 builder: (context) => const Hotels()));
  //                       },
  //                       text: "Hotels"),
  //                 ],
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //     appBar: AppBar(
  //       title: const Text(
  //         "Hello",
  //         style: TextStyle(
  //             color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
  //       ),
  //     ),
  //     body: page,
  //   );
  // }
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const FavPage();
      case 1:
        page = const Hotels();
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  backgroundColor: Colors.black,
                  extended: constraints.maxWidth >= 1000,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('Favorites'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.hotel),
                      label: Text('Hotels'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  child: page,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
