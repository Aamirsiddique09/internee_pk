import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:interneepk/splashScreen/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internee.PK',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.teal.shade50,
        primaryColor: Colors.teal.shade600,
        cardColor: Colors.teal.shade200,
        canvasColor: Colors.teal.shade300,
        textTheme: TextTheme(
          titleLarge: const TextStyle(fontSize: 24,color: Colors.teal,fontWeight: FontWeight.bold),
          titleMedium: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(fontSize: 18,color: Colors.grey[700])
        )

      ),
      //-------------Setdark mode here-------------------
      // darkTheme: ThemeData(
      //   primarySwatch: Colors.green,
      //   scaffoldBackgroundColor: Colors.black12,
      //    primaryColor: Colors.grey[800],
      //    cardColor: Colors.white,
      //    canvasColor: Colors.white,



      // ),
      themeMode:ThemeMode.system,
      home: const  SplashScreen(),
    );
  }
}
