import 'package:flutter/material.dart';
import 'package:goodspace_assignment/constants.dart';

class MyWelcomePage extends StatefulWidget {
  const MyWelcomePage({super.key, required this.title});

  final String title;

  @override
  State<MyWelcomePage> createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage>
    with TickerProviderStateMixin {
  var chosenValue = 'IN +91';
  TabController? _tabController;

  @override
  void initState() {
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
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(children: [
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // tab bar with 4 tabs with images 1.png, 2.png, 3.png, 4.png respectively
                TabBar(
                  tabs: const [
                    Tab(
                      child: SizedBox(),
                    ),
                    Tab(
                      child: SizedBox(),
                    ),
                    Tab(
                      child: SizedBox(),
                    ),
                    Tab(
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
                // mobile number field
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mobile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black45,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Explore jobs',
                            style: TextStyle(
                              fontSize: 14,
                              color: kBlue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 5,
                            child: Divider(color: kBlue, thickness: 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // country code dropdown
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            onChanged: (String? value) {
                              setState(() {
                                chosenValue = value!;
                              });
                            },
                            value: chosenValue,
                            items: const <DropdownMenuItem<String>>[
                              DropdownMenuItem<String>(
                                value: 'IN +91',
                                child: Text('IN +91'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'US +1',
                                child: Text('US +1'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'UK +44',
                                child: Text('UK +44'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 7),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          decoration: InputDecoration(
                            hintText: 'Phone number',
                            hintStyle: const TextStyle(
                                color: Colors.black26,
                                fontSize: 18,
                                height: 2.8,
                                fontWeight: FontWeight.w600),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                // continue button
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Continue',
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
        ]),
      ),
    );
  }
}
