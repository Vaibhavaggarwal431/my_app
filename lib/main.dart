import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/auth/signin_screen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavigationScreen(),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<NavigationScreen> {
  void navigationPage() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // final token = prefs.getString("userToken");

    // log("$token token");
    // await prefs.clear();
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // final token = prefs.getString("userToken");

    // log("$token tanay123token");

    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignInScreen()));
    // if (token == null) {
    //   // ignore: use_build_context_synchronously

    // } else {
    //   // ignore: use_build_context_synchronously
    //   Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => BottomNav()));
    // }
  }

  @override
  void initState() {
    super.initState();
    navigationPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Center(
          child: Image.asset(
            // width: screenWidth * 0.3,
            'assets/splashscreen.png',
          ),
        ));
  }
}
