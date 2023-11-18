// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// import 'package:flutter/material.dart';

// void main() {
//   runApp(WeatherResultsPage());
// }

// class WeatherResultsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           margin: EdgeInsets.all(24),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _navbar(context),
//               _search(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   _navbar(context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       leading: IconButton(
//         icon: Icon(
//           Icons.arrow_back,
//           color: Colors.black,
//         ),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//       title: Row(
//         children: const [
//           CircleAvatar(
//             radius: 25,
//             backgroundImage: AssetImage('assets/profile.png'),
//           ),
//           SizedBox(width: 10),
//           Text(
//             "Hello, Asare",
//             style: TextStyle(fontSize: 18, color: Colors.black),
//           ),
//         ],
//       ),
//       actions: [
//         IconButton(
//           icon: Icon(
//             Icons.logout,
//             color: Colors.black,
//           ),
//           onPressed: () {
//             // Handle the logout button press here
//           },
//         ),
//       ],
//       iconTheme: IconThemeData(color: Colors.black),
//     );
//   }

//   _search(context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: "Kigali, Rwanda",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide.none,
//                     ),
//                     filled: true,
//                     fillColor: Colors.grey[200],
//                     prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//               ),
//               SizedBox(width: 10),
//               // ElevatedButton(
//               //   onPressed: () {
//               //   },
//               //   child: Text("Search"),
//               // ),
//             ],
//           ),
//           SizedBox(height: 50),
//           Text(
//             "Weather in Kigali, Rwanda",
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 20),
//           Column(
//             children: [
//               Text(
//                 "Cloudy",
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(height: 40),
//               Image.asset(
//                 'assets/clouds.png',
//                 width: 100,
//                 height: 100,
//               ),
//               SizedBox(height: 40),
//               Text(
//                 "75°F",
//                 style: TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//           SizedBox(height: 50),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: const [
//               Text(
//                 "Time: 12:00 PM",
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 "Humidity: 65%",
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 "Pressure: 1010 hPa",
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 "Wind Speed: 5 mph",
//                 style: TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
