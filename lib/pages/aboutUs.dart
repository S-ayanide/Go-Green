import 'package:flutter/material.dart';
import 'package:go_green/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUs extends StatelessWidget with NavigationStates {
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
                  height: _height * 0.3,
                  width: _width,
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40),
                        child: Text(
                          'Go Green',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 50,
                        ),
                        child: Icon(
                          Icons.hdr_off,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: _height * 0.6,
                  width: _width,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40),
                        child: Text(
                          'Our Aim',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 50,
                        ),
                        child: Text(
                          '''This app is an initiative taken to reduce the adverse effect on Climate Change and make the people aware about the best practice to reduce the possibility of harming not just the environment but also making severe climate change less prone.

This app aims to help the environment by planting trees and thus provides the choice to gift someone a tree which will go straight to a charity fund who would be responsible for planting trees.''',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: _height * 0.3,
                  width: _width,
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(35),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Developed By',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Sayan Mondal',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 45,
                                right: 45,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.github,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.medium,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.dev,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => {},
                                  ),
                                  IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.youtube,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => {},
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
