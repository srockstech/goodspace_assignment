import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';

import '../model/donors_profile_card.dart';

// work tab screen for the 'Work' tab in the bottom navigation bar displaying all the available jobs.
class DonorsTabScreen extends StatefulWidget {
  const DonorsTabScreen({super.key});

  @override
  State<DonorsTabScreen> createState() => _DonorsTabScreenState();
}

class _DonorsTabScreenState extends State<DonorsTabScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Find Blood Donors text
                  const Text(
                    'Find Blood Donors',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.share_outlined,
                        color: kDarkBlue,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.message_outlined,
                        color: kDarkBlue,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          const Icon(
                            Icons.notifications_outlined,
                            color: kDarkBlue,
                            size: 24,
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
                        width: 10,
                      ),
                      const Icon(
                        Icons.menu,
                        color: kDarkBlue,
                        size: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Welcome to ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'GoodSpace Community.',
                    style: TextStyle(
                      fontSize: 16,
                      color: kBlue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            // Text saying 'You can send maximum of 10 requests.' with color 'kRed'
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'You can send maximum of 10 requests.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: kRed,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 9.0, left: 10.0, right: 10.0, bottom: 9.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.43,
                    padding: const EdgeInsets.symmetric(
                        vertical: 11, horizontal: 20),
                    decoration: CustomBoxDecoration.buttonBoxDecoration(
                        border: true,
                        color: kLightBlue,
                        borderColor: kLightBlue),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Create Request',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.add_circle_outline_sharp,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.43,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 15),
                    decoration: CustomBoxDecoration.buttonBoxDecoration(
                        color: Colors.white, border: true, borderColor: kRed),
                    child: const Center(
                      child: Text(
                        'Donate Blood',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kLightRed,
                        ),
                      ),
                    ),
                  ),
                  // bookmark sign
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // carn with CustomBoxDecoration having a row with two text widgets 'Select City' and 'Select Blood Group'
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
                decoration: CustomBoxDecoration.cardBoxDecoration(),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select City',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: kDarkBlue,
                          ),
                        ),
                        Text(
                          'Select Blood Group',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: kDarkBlue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * 0.48,
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 15),
                          decoration: CustomBoxDecoration.buttonBoxDecoration(
                              color: Colors.white,
                              border: true,
                              borderColor: kLightRed),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'New Delhi',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: kGrey.withOpacity(0.6),
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: kGrey,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 18),
                          decoration: CustomBoxDecoration.buttonBoxDecoration(
                              color: Colors.white,
                              border: true,
                              borderColor: kLightRed),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Any',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kDarkBlue,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: kGrey,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const DonorsProfileCard(),
            const DonorsProfileCard(),
            const DonorsProfileCard(),
            const DonorsProfileCard(),
            const DonorsProfileCard(),
          ],
        ),
      ),
    );
  }
}
