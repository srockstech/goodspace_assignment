import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';
import 'package:goodspace_assignment/model/job_post.dart';

// work tab screen for the 'Work' tab in the bottom navigation bar displaying all the available jobs.
class WorkTabScreen extends StatefulWidget {
  const WorkTabScreen({super.key});

  @override
  State<WorkTabScreen> createState() => _WorkTabScreenState();
}

class _WorkTabScreenState extends State<WorkTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            // top bar with profile image icon, create pitch button,share icon,messages icon, notification icon and menu icon
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Circular profile image with Circular.png
                      Image.asset('lib/assets/images/profile.png', height: 30),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 14),
                        decoration: CustomBoxDecoration.buttonBoxDecoration(),
                        child: const Text(
                          'Create Pitch',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //button with custom box decoration with text 'create pitch'

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: CustomBoxDecoration.cardBoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: CustomBoxDecoration.buttonBoxDecoration(),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 4),
                          child: const Text(
                            '10.0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'GScore',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: CustomBoxDecoration.cardBoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/gcoin_logo.png',
                          width: 18,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          '66',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kBlue),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Gcoin',
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: CustomBoxDecoration.cardBoxDecoration(),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kBlue),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Feedback',
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 65,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: CustomBoxDecoration.cardBoxDecoration(),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: kBlue),
                        ),
                        Text(
                          'Pending',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1,
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey,

                        // thickness: 5,
                        // width: 50,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: kBlue),
                        ),
                        Text(
                          'Shortlisted',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1,
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey,

                        // thickness: 5,
                        // width: 50,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: kBlue),
                        ),
                        Text(
                          'Applied',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                height: 50,
                decoration: CustomBoxDecoration.cardBoxDecoration(),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    prefixIconConstraints: const BoxConstraints(
                      // maxWidth: 40,
                      minWidth: 40,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: kBlue,
                      size: 25,
                    ),
                    suffixIcon: const Icon(
                      Icons.filter_alt_outlined,
                      color: kDarkBlue,
                      size: 27,
                    ),
                    hintText: 'Search opportunities',
                    hintStyle: const TextStyle(
                        color: Colors.black26,
                        fontSize: 14,
                        height: 3.5,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            JobPost(),
            JobPost(),
            JobPost(),
            JobPost(),
            JobPost(),
          ],
        ),
      ),
    );
  }
}
