import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';

class DonorsProfileCard extends StatelessWidget {
  const DonorsProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: CustomBoxDecoration.buttonBoxDecoration(
          border: true,
          color: Colors.white,
          borderColor: kLightRed,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 14.0, bottom: 6, left: 14.0, right: 14.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sarvagya Verma',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  //circle avatar with blood group 'B+' stacked on top of it
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(1.5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset('lib/assets/images/profile.png',
                              height: 80),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: Colors.white,
                                  width: 1.5,
                                ),
                              ),
                              color: kLightRed,
                            ),
                            child: const Center(
                              child: Text(
                                'B+',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                    width: screenWidth * 0.405,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 30),
                    decoration: CustomBoxDecoration.buttonBoxDecoration(
                        color: Colors.white,
                        border: true,
                        borderColor: kLightRed),
                    child: const Center(
                      child: Text(
                        'View Profile',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kLightRed,
                        ),
                      ),
                    ),
                  ),
                  // bookmark sign
                  Container(
                    width: screenWidth * 0.405,
                    padding: const EdgeInsets.symmetric(
                        vertical: 11, horizontal: 30),
                    decoration:
                        CustomBoxDecoration.buttonBoxDecoration(border: true),
                    child: const Center(
                      child: Text(
                        'Request',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
