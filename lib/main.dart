// main.dart


// // import 'package:app/redo.dart';
// // import 'package:flutter/material.dart';
// // //import 'package:app/list_view.dart'; 
// // //import 'package:app/onboarding_screen.dart';  
// // //import 'package:app/grid_view_valley.dart';  
// // //import 'package:app/practice.dart';
// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       //home: const GridViewValley()
// //       // home: const OnboardingPage(),
// //       //home: const ListViewScreen()
// //       //home: const GridViewValley(),
// //       home: const ListViewBuilder(),
// //     );
// //   }
// // }




import 'package:flutter/material.dart';
import 'package:app/screens/home_screen.dart';

void main() {
  runApp(const YouTubeHomePageApp());
}

class YouTubeHomePageApp extends StatelessWidget {
  const YouTubeHomePageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), 
      home: HomeScreen(),
    );
  }
}






