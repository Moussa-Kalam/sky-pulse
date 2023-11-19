import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skypulse/firebase_auth_services.dart';
import 'package:skypulse/loginpage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        const Text(
          "Create Account",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0), // Add margin to the top
          child: const Text(
            'Go ahead and sign up, begin your weather adventure!',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // TextField(
        //   decoration: InputDecoration(
        //       hintText: "Username",
        //       border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(10),
        //           borderSide: BorderSide.none),
        //       fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
        //       filled: true,
        //       prefixIcon: Icon(Icons.person)),
        // ),
        // const SizedBox(height: 15),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
              filled: true,
              prefixIcon: const Icon(Icons.email)),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
              filled: true,
              prefixIcon: const Icon(Icons.lock)),
        ),
        const SizedBox(height: 15),
        // TextField(
        //   decoration: InputDecoration(
        //     hintText: "Confirm password",
        //     border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(18),
        //         borderSide: BorderSide.none),
        //     fillColor: Theme.of(context).primaryColor.withOpacity(0.0),
        //     filled: true,
        //     prefixIcon: const Icon(Icons.lock),
        //   ),
        //   obscureText: true,
        // ),
        // const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            final message = await AuthServices().registration(
                email: _emailController.text,
                password: _passwordController.text);

            if (message!.contains("success")) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const LogIn()));
            }
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(message)));
          },
          style: ElevatedButton.styleFrom(
            // shape: StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text(
            "Create Account",
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }

  // _alreadyhaveaacount(context){
  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("I already have an account!"),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const LogIn()));
            },
            child: const Text("Sign in"))
      ],
    );
  }
}
