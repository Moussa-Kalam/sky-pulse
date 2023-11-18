// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// import 'package:flutter/material.dart';

// void main() {
//   runApp(ProfilePage());
// }

// class ProfilePage extends StatelessWidget {
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
//               _header(context),
//               _inputField(context),
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

//   _header(context) {
//     return Column(
//       children: const [
//         Text(
//           "Edit Profile",
//           style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 10),
//         CircleAvatar(
//           radius: 50,
//           backgroundImage: AssetImage('assets/profile.png'),
//         ),
//       ],
//     );
//   }

//   _inputField(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         TextField(
//           decoration: InputDecoration(
//               hintText: "Username",
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none),
//               fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
//               filled: true,
//               prefixIcon: Icon(Icons.person)),
//         ),
//         SizedBox(height: 15),
//         TextField(
//           decoration: InputDecoration(
//               hintText: "Email",
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none),
//               fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
//               filled: true,
//               prefixIcon: Icon(Icons.email)),
//         ),
//         SizedBox(height: 15),
//         TextField(
//           decoration: InputDecoration(
//               hintText: "Password",
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none),
//               fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
//               filled: true,
//               prefixIcon: Icon(Icons.lock)),
//         ),
//         SizedBox(height: 15),
//         TextField(
//           decoration: InputDecoration(
//             hintText: "Confirm password",
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(18),
//                 borderSide: BorderSide.none),
//             fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
//             filled: true,
//             prefixIcon: Icon(Icons.lock),
//           ),
//           obscureText: true,
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             padding: EdgeInsets.symmetric(vertical: 16),
//             textStyle: TextStyle(fontSize: 20),
//           ),
//           child: Text(
//             "Save Changes",
//             style: TextStyle(fontSize: 20),
//           ),
//         )
//       ],
//     );
//   }
// }
