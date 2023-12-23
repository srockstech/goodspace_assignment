import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';

class SocialProfileCard extends StatelessWidget {
  const SocialProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: CustomBoxDecoration.cardBoxDecoration(),
        child: Column(
          children: [
            //image has rounded corners
            Padding(
              padding: const EdgeInsets.only(top: 9.0, right: 9.0, left: 9.0),
              child: Container(
                height: screenWidth * 0.8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/social_pic.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.black.withOpacity(0.0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: const [0.0, 0.25],
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 230,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Sarvagya Verma',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'A Flutter Developer with an experience of more than 2 years. Currently a final year student at Delhi Technological University.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                    width: screenWidth * 0.405,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 30),
                    decoration: CustomBoxDecoration.buttonBoxDecoration(
                        color: Colors.white, border: true),
                    child: const Center(
                      child: Text(
                        'View Profile',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kBlue,
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
                        'Connect',
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
