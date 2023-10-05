// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';


void main() {
  runApp(SignupPage());
}

class SignupPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              // _alreadyhaveaacount(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

    _header(context){
      return Column(
        children: [
          Text("Create Account",style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Container(
              margin:  EdgeInsets.only(top: 8.0), // Add margin to the top
              child: Text('Go ahead and sign up, begin your weather adventure!', style: TextStyle(
            fontSize: 15),
            ),
            ),
          
        ],
      );
    }
    

    _inputField(context){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
              filled: true,
              prefixIcon: Icon(Icons.person)
            ),
          ),
          SizedBox(height: 15),

          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
              filled: true,
              prefixIcon: Icon(Icons.email)
            ),
          ),
          SizedBox(height: 15),

          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
              filled: true,
              prefixIcon: Icon(Icons.lock)
            ),
          ),
          SizedBox(height: 15),

          TextField(
            decoration: InputDecoration(
              hintText: "Confirm password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
              filled: true,
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
              style: ElevatedButton.styleFrom(
                // shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 20),
              ), child: Text(
              "Create Account",
              style: TextStyle(fontSize: 20),
              ),
          )
        ],
      );
    }


    // _alreadyhaveaacount(context){
    //   return TextButton(onPressed: (){}, child: Text("I already have an account"));
    // }


    _signup(context){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("I already have an account!"),
          TextButton(onPressed: (){}, child: Text("Sign in"))
        ],
      );
    }
}

  
