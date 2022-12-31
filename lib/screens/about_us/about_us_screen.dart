import 'package:amirtham_kolangal/business_logic/constants.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static String routeName = "/aboutUs";
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: ThemeColors.gradientBackground),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Us"),
        ),
        body: Container(),
      ),
    );
  }
}
