import 'package:amirtham_kolangal/business_logic/constants.dart';
import 'package:amirtham_kolangal/screens/about_us/about_us_screen.dart';
import 'package:amirtham_kolangal/widgets/icon_text.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        decoration: const BoxDecoration(gradient: ThemeColors.gradientPrimary),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  const BoxDecoration(gradient: ThemeColors.gradientBackground),
              //decoration: const BoxDecoration(color: Colors.white38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageConstants.logoPath,
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                  Text(
                    'Amirtham Kolangal',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w400, fontSize: 23),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const IconText(
                icon: Icons.home,
                text: 'Home',
              ),
              onTap: () {
                Navigator.pop(context);
                //Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
            ListTile(
              title: const IconText(
                icon: Icons.info_outline,
                text: 'About us',
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AboutUsScreen.routeName);
              },
            ),
            ListTile(
              title: const IconText(
                icon: Icons.favorite,
                text: 'Ratings',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
