import 'package:amirtham_kolangal/business_logic/constants.dart';
import 'package:amirtham_kolangal/screens/about_us/about_us_screen.dart';
import 'package:amirtham_kolangal/screens/home/home_screen.dart';
import 'package:amirtham_kolangal/screens/photo_viewer/photo_viewer_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: ThemeColors.primary, size: 20),
          //backgroundColor: ThemeColors.background,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              //color: ThemeColors.dark,
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontFamily: 'Mukta',
              fontSize: 24),
        ),
        //colorScheme: ColorScheme(secondary: ),
        //backgroundColor: ThemeColors.background,
        scaffoldBackgroundColor: Colors.transparent,

        fontFamily: 'Mukta',
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: ThemeColors.primarySwatch)
                .copyWith(
          secondary: ThemeColors.primary,
        ),
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home: HomeScreen(),
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        AboutUsScreen.routeName: (context) => const AboutUsScreen(),
        PhotoViewerScreen.routeName: (context) => const PhotoViewerScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
