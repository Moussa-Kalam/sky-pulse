import 'package:flutter/material.dart';

void main() {
  runApp(WeatherResultsPage());
}

class WeatherResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button action here
            },
          ),
          title: Text("Sky pulse"),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                // Handle log out button action here
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage("https://your-profile-image-url.com"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Hello,"),
                      Text("User Name"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search for something...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    Text("Location Searched Name"),
                    SizedBox(height: 10),
                    // Replace this with your weather image widget
                    Image.network("https://weather-image-url.com"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
