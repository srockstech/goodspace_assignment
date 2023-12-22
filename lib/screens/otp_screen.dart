import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';
import 'package:goodspace_assignment/design/custom_box_decoration.dart';

import 'home_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  var timer;

  void startTimer() async {
    timer = 30;
    while (timer != 0) {
      await Future.delayed(Duration(seconds: 1), () {});
      setState(() {
        timer--;
      });
    }
  }

  @override
  void initState() {
    startTimer();
    _tabController = TabController(length: 4, vsync: this);
    setState(() {
      _tabController!.animateTo(1);
    });
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging == false) {
        setState(() {
          _tabController!.animateTo(
              (_tabController!.index != 3) ? _tabController!.index + 1 : 0,
              duration: const Duration(seconds: 3),
              curve: Curves.easeInOut);
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // tab bar with 4 tabs with images 1.png, 2.png, 3.png, 4.png respectively
                  TabBar(
                    tabs: const [
                      Tab(
                        height: 0,
                        child: SizedBox(),
                      ),
                      Tab(
                        height: 0,
                        child: SizedBox(),
                      ),
                      Tab(
                        height: 0,
                        child: SizedBox(),
                      ),
                      Tab(
                        height: 0,
                        child: SizedBox(),
                      ),
                    ],
                    indicatorColor: Colors.transparent,
                    controller: _tabController,
                  ),

                  // tab bar view with 4 tabs with images 1.png, 2.png, 3.png, 4.png respectively
                  SizedBox(
                    height: screenHeight * 0.6,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Center(
                          child: Image.asset('lib/assets/images/1.png'),
                        ),
                        Center(
                          child: Image.asset('lib/assets/images/2.png'),
                        ),
                        Center(
                          child: Image.asset('lib/assets/images/3.png'),
                        ),
                        Center(
                          child: Image.asset('lib/assets/images/4.png'),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'OTP',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          'Change Number',
                          style: TextStyle(
                            fontSize: 14,
                            color: kBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: CustomBoxDecoration.cardBoxDecoration(),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: CustomBoxDecoration.cardBoxDecoration(),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: CustomBoxDecoration.cardBoxDecoration(),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: CustomBoxDecoration.cardBoxDecoration(),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      height: 20,
                      child: (timer > 0)
                          ? Row(
                              children: [
                                const Text(
                                  'Resend in',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  (timer > 9) ? ' 00:$timer' : ' 00:0$timer',
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: kBlue,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          : const Row(
                              children: [
                                Text(
                                  'Resend OTP',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: kBlue,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                  // continue button
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: CustomBoxDecoration.buttonBoxDecoration(),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
