import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/presentation/hotels.dart';
import 'package:flutter_application_1/feature/presentation/fav_page.dart';

class ListItemsPage extends StatefulWidget {
  const ListItemsPage({super.key});
  
  @override
  State<ListItemsPage> createState() => _ListItemsPageState();
}

class _ListItemsPageState extends State<ListItemsPage> {
  final user = FirebaseAuth.instance.currentUser!;
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
