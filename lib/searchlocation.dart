import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CircleAvatar(
            backgroundImage: const AssetImage(
              'assets/avatar.jpeg',
            ),
            radius: 25.r,
          ),
        ),
        title: const Text(
          'Hello, Asare',
          style: TextStyle(
              fontFamily: 'Mulish',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: Colors.black,
              size: 22.r,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Material(
              elevation: 12.0,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  height: 46.h,
                  width: 327,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDFCFC),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                      decoration: InputDecoration(
                    hintText: 'Search Location',
                    hintStyle: TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF1F1249),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF1F1249),
                    ),
                    border: InputBorder.none,
                  ))),
            ),
            Image.asset(
              'assets/sunshine.png',
              width: 315.w,
              height: 227.h,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Enter your location to get the weather forecasting for today ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF1F1249),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Material(
              elevation: 12.0,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
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
          ],
        ),
      ),
    );
  }
}
