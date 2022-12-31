import 'package:amirtham_kolangal/screens/about_us/about_us_screen.dart';
import 'package:amirtham_kolangal/screens/home/my_drawer.dart';
import 'package:flutter/material.dart';
import '../../business_logic/constants.dart';
import '../../widgets/menu.dart';
import 'photo_grid.dart';
import 'slider.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/";
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Container(
      decoration: const BoxDecoration(gradient: ThemeColors.gradientBackground),
      child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Menu(
              onPressed: () => scaffoldKey.currentState?.openDrawer(),
            ),
            title: const Text("Amirtham Kolangal"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AboutUsScreen.routeName);
                  },
                  child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpg")),
                ),
              )
            ],
          ),
          drawer: const MyDrawer(),
          body: ListView(
            children: const [
              SizedBox(height: 300, child: MyCarousel()),
              Expanded(
                child: PhotoGrid(),
              ),
            ],
          )),
    );
  }

  final List<Color> kMixedColors = [
    const Color(0xff71A5D7),
    const Color(0xff72CCD4),
    const Color(0xffFBAB57),
    const Color(0xffF8B993),
    const Color(0xff962D17),
    const Color(0xffc657fb),
    const Color(0xfffb8457),
  ];

  final List<Category> categories = [
    Category(image: "assets/images/1.png", name: "Beef"),
    Category(image: "assets/images/2.png", name: "Chicken"),
    Category(image: "assets/images/3.png", name: "Dessert"),
    Category(image: "assets/images/4.png", name: "Lamb"),
    Category(image: "assets/images/5.png", name: "Pasta"),
  ];
}

class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}
