import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skypulse/firebase_options.dart';
import 'package:skypulse/welcomescreen.dart';
import "package:firebase_core/firebase_core.dart";


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var firebase = await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,
);
  print(firebase.options.apiKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'SKYPULSE',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HomePage(),
          );
        });
  }
}
