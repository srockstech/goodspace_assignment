import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';

class JobPost extends StatelessWidget {
  const JobPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          decoration: CustomBoxDecoration.cardBoxDecoration(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: 12.0, left: 15.0, right: 15.0, bottom: 9.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Android Developer',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Chennai, Tamil Nadu, India',
                          style: TextStyle(
                            fontSize: 12,
                            color: kGrey,
                          ),
                        ),
                      ],
                    ),
                    // bookmark sign
                    Icon(
                      Icons.bookmark_border,
                      color: kBlue,
                      size: 25,
                    ),
                  ],
                ),
              ),
              // Below there are three containers with icons and text in a row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        height: 35,
                        width: 70,
                        decoration: CustomBoxDecoration.tagsBoxDecoration(),
                        child: const Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_city_sharp,
                                color: kGrey,
                                size: 16,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Onsite',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Flexible(
                      child: Container(
                        height: 35,
                        width: 70,
                        decoration: CustomBoxDecoration.tagsBoxDecoration(),
                        child: const Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.work,
                                color: kGrey,
                                size: 16,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '1-3 yrs',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Flexible(
                      child: Container(
                        height: 35,
                        width: 70,
                        decoration: CustomBoxDecoration.tagsBoxDecoration(),
                        child: const Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.currency_rupee_rounded,
                                color: kBlue,
                                size: 16,
                              ),
                              Text(
                                '3L - 6L',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: kBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 9.0, left: 10.0, right: 15.0, bottom: 9.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: kMidBlue,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Akshaya Elango',
                              style: TextStyle(
                                fontSize: 13,
                                color: kGrey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Bookwater Tech Pvt Ltd',
                              style: TextStyle(
                                fontSize: 10,
                                color: kGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // bookmark sign
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 9, horizontal: 30),
                      decoration: CustomBoxDecoration.buttonBoxDecoration(),
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
