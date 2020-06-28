import 'package:flutter/material.dart';
import 'package:go_green/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:go_green/widgets/article_view.dart';
import 'package:lottie/lottie.dart';

class Hack20 extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: _height * 0.35,
                  width: _width,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: _width / 4,
                        ),
                        child: Lottie.asset(
                            'assets/lottie-animations/spinner.json'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: _height * 0.9,
                  width: _width,
                  color: Color(0x12000000),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40),
                        child: Text(
                          'Hack 20',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 40,
                        ),
                        child: Text(
                          '''The second-annual international hackathon organised by the global Flutter Community. This year, it is an online-only event. Participants will join teams of 1-5 people from the world. You can collaborate remotely using whatever platform you’d like. Each team will be asked to build an app on themes (Saving the Planet - what we learned from the pandemic, Retro/ Cyberpunk Future). At the end, all participants will vote on their favorite projects in several rounds of voting.''',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: _width / 6),
                          child: Lottie.asset(
                              'assets/lottie-animations/floating-doc.json')),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 40,
                        ),
                        child: Text(
                          '''The top 3 winners will receive prizes from the Flutter Community and sponsors - most importantly, bragging rights!''',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 0,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: _height * 0.8,
                  width: _width,
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                            child: Text(
                          "Team Work is Key",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      Lottie.asset(
                        'assets/lottie-animations/Team-work.json',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: _height / 4,
                  width: _width,
                  child: Center(
                    child: RaisedButton(
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticleView(
                                    blogUrl: 'https://flutterhackathon.com/#/',
                                  )),
                        );
                      },
                      child: Text(
                        'Check out Hack 20',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
