import 'package:amirtham_kolangal/business_logic/constants.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static String routeName = "/aboutUs";
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ThemeColors.dark,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Container(
            //color: ThemeColors.dark,
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ThemeColors.dark,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 8,
                      child: Image.network(
                        "https://raw.githubusercontent.com/arul-official/amirthamKolangal/main/images/about.jpg",
                        //width: 300,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Designed and Developed By",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Text(
                "Arul MV",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ],
          ),
        ],
      ),
    );
  }
}
