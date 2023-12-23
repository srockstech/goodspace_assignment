import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';

// Hire tab screen
class HireTabScreen extends StatefulWidget {
  const HireTabScreen({super.key});

  @override
  State<HireTabScreen> createState() => _HireTabScreenState();
}

class _HireTabScreenState extends State<HireTabScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //background color of the scaffold should be kLightMidBlue with gradient from top to bottom
      backgroundColor: kLightMidBlue,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                kLightMidBlue,
                kLightMidBlue,
                Colors.white,
                Colors.white,
                Colors.white,
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.repeated,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Circular profile image with Circular.png
                        Container(
                          padding: const EdgeInsets.all(1.5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset('lib/assets/images/profile.png',
                              height: 37),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Sarvagya',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'GoodSpace',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //button with custom box decoration with text 'create pitch'

                    Row(
                      children: [
                        Stack(
                          children: [
                            const Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 28,
                            ),
                            // notification icon with red dot
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 13,
                                width: 13,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Text(
                                    '51',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Icon(
                          CupertinoIcons.text_aligncenter,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              // row with a text 'Goodspace Balance' and a button with custom box decoration with text 'Add Funds'
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GoodSpace Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '₹ 100',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -1,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 110,
                      decoration: CustomBoxDecoration.cardBoxDecoration(),
                      child: const Center(
                        child: Text(
                          'Add funds',
                          style: TextStyle(
                            color: kDarkMidBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              // container with CustomBoxDecoration.cardBoxDecoration() having a row with two buttons with text 'Post Job' and 'Auto Recruiter'
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration:
                      CustomBoxDecoration.cardBoxDecoration(showShadow: false),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: screenWidth * 0.4,
                        decoration: CustomBoxDecoration.buttonBoxDecoration(
                            color: kDarkMidBlue),
                        child: const Center(
                          child: Text(
                            'Post Job',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                      ),
                      // vertical divider
                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.grey[300],
                      ),
                      Container(
                        height: 40,
                        width: screenWidth * 0.4,
                        decoration: CustomBoxDecoration.buttonBoxDecoration(
                            color: kDarkMidBlue),
                        child: const Center(
                          child: Text(
                            'Auto Recruiter',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // container with CustomBoxDecoration.cardBoxDecoration() having a row with two widgets Text('Search for over 1 million professionals') and Image.asset('lib/assets/images/professionals_profile_pics.png')
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  decoration:
                      CustomBoxDecoration.cardBoxDecoration(showShadow: false),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.7,
                        child: const Text(
                          'Search for over 1 million Professionals',
                          style: TextStyle(
                            color: kBlue,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                      Image.asset(
                        'lib/assets/images/professionals_profile_pics.png',
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('lib/assets/images/post_a_job_graphic.png'),
            ],
          ),
        ),
      ),
    );
  }
}
