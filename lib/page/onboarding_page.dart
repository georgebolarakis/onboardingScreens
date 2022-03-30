import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding_screen/widgets/secondTest.dart';

import '../widgets/testWidget.dart';
import 'content_model.dart';
import 'home.dart';
// import 'package:introduction_screen/intorduction_screen.dart';

// class onBoardingPage extends StatelessWidget {
//   const onBoardingPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => SafeArea(
//         child: IntroductionScreen(),
//       );
// }

class Onbording extends StatefulWidget {
  Onbording(BuildContext ctx);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildContainer(Widget child) {
    return Container(
      //we are adding the decoration for a user to identify that there is a listview
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromARGB(255, 228, 10, 10)),
        borderRadius: BorderRadius.circular(10),
      ),
      //margin inside the container
      margin: EdgeInsets.all(10),
      //padding  inside the container
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      //we are expecting the child to be a type widget
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        contents[i].image,
                        height: 150,
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            // height: constraints.maxHeight * 0.2,
                            // width: 10,
                            height: 300,
                            //we are adding the decoration for a user to identify that there is a listview
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  //color: Theme.of(context).primaryColor,

                                  color: Color.fromARGB(255, 0, 6, 8)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            //margin inside the container
                            // margin: EdgeInsets.all(10),
                            // //padding  inside the container
                            // padding: EdgeInsets.all(10),
                            // height: double.infinity,
                            // width: double.infinity,
                            //we are expecting the child to be a type widget
                            child: SecondTest(contents[i].content),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.all(40),
                  //width: double.infinity,
                  child: FlatButton(
                    child: Text(
                        currentIndex == contents.length - 1 ? "Back" : "Back"),
                    onPressed: () {
                      if (currentIndex == contents.length) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Home(),
                          ),
                        );
                      }
                      _controller.previousPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.all(40),
                  //width: double.infinity,
                  child: FlatButton(
                    child: Text(currentIndex == contents.length - 1
                        ? "Continue"
                        : "Next"),
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Home(),
                          ),
                        );
                      }
                      _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
