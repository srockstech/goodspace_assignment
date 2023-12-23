import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';
import 'package:goodspace_assignment/model/premium_plan_card.dart';

//Premium  tab screen
class PremiumTabScreen extends StatefulWidget {
  const PremiumTabScreen({Key? key}) : super(key: key);

  @override
  State<PremiumTabScreen> createState() => _PremiumTabScreenState();
}

class _PremiumTabScreenState extends State<PremiumTabScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //text 'CHOOSE YOUR PLAN'
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'CHOOSE YOUR PLAN',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: kBlue,
                    letterSpacing: -1,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Expanded(
                child: ListView(
                  children: [
                    // Profile Boost
                    PremiumPlanCard(
                      planName: 'Profile Boost',
                      planPrice: 1399,
                      description: const Text(
                        'For 30 Days',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: kGrey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    PremiumPlanCard(
                      planName: 'Starter',
                      planPrice: 179,
                      description: const Row(
                        children: [
                          Text(
                            'Send ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                          Text(
                            '10',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kBlue,
                              letterSpacing: -1,
                            ),
                          ),
                          Text(
                            ' Messages',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.015,
                    ),
                    Stack(
                      children: [
                        //frequently purchased

                        Container(
                          padding: EdgeInsets.only(top: screenHeight * 0.015),
                          child: PremiumPlanCard(
                            planName: 'Basic',
                            planPrice: 599,
                            description: const Row(
                              children: [
                                Text(
                                  'Send ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kGrey,
                                  ),
                                ),
                                Text(
                                  '50',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: kBlue,
                                    letterSpacing: -1,
                                  ),
                                ),
                                Text(
                                  ' Messages',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: kGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 9,
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration:
                                  CustomBoxDecoration.buttonBoxDecoration(
                                      color: kYellow),
                              child: const Text(
                                'Frequently Purchased',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    PremiumPlanCard(
                      planName: 'Premium',
                      planPrice: 1399,
                      description: const Row(
                        children: [
                          Text(
                            'Send ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                          Text(
                            '120',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kBlue,
                              letterSpacing: -1,
                            ),
                          ),
                          Text(
                            ' Messages',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
