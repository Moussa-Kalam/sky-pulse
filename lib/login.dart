// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget{
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
              _forgotpassword(context),
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
          Text("Log In",style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold),
            ),
          Text('Happy to see you back!', style: TextStyle(
            fontSize: 20),
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
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 20),
              ), child: Text(
              "Sign In",
              style: TextStyle(fontSize: 20),
              ),
          )
        ],
      );
    }


    _forgotpassword(context){
      return TextButton(onPressed: (){}, child: Text("Forgot Password"));
    }


    _signup(context){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?"),
          TextButton(onPressed: (){}, child: Text("Sign up"))
          
        ],
      );
    }
}
