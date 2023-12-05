import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:skypulse/loginpage.dart';
import 'package:skypulse/registration.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 32,
          ),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/welcomeImage.png',
                width: 298.w,
                height: 286.h,
              ),
              const Spacer(),
              const Text(
                'SkyPulse',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D2D2D),
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 10.h),
              const Text(
                'Welcome to your weather companion.Your weather adventure awaits you!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF1F1249),
                ),
              ),
              SizedBox(height: 40.h),
              Material(
                elevation: 12.0,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const SignUp(),
                        ));
                  },
                  child: Container(
                    height: 52.h,
                    width: 315.w,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF2663DF),
                            Color(0xFF758FF0),
                            // Color(0xFFFFFFFF)
                          ]),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color(0xFF9CADF2),
                          blurRadius: 18,
                          offset: Offset(0, 6),
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const LogIn(),
                      ));
                },
                child: Container(
                  height: 46.h,
                  width: 315.w,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xFF758FF0),
                      Color(0xFFFFFFFF),
                    ]),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFF9CADF2),
                        blurRadius: 18,
                        offset: Offset(0, 6),
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
