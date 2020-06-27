import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Earth3D extends StatefulWidget {
  @override
  _Earth3DState createState() => _Earth3DState();
}

class _Earth3DState extends State<Earth3D> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 50), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _animationController.repeat();
            }
          });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    Offset _offset = Offset(0, 0);
    timeDilation = 1.0;

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFF0D1215),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://media.istockphoto.com/videos/stars-over-black-background-video-id1124506281?b=1&k=6&m=1124506281&s=640x640&h=yuWW6_pGBfM2bRLB4aiHccG6N3DMbs2Qhp1tpcemtzI='),
                      fit: BoxFit.fill)),
              child: Center(
                child: Transform(
                  alignment: FractionalOffset.centerLeft,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.0011)
                    ..rotateX(_offset.dy)
                    ..rotateY(_offset.dx),
                  child: RotationTransition(
                    turns: _animationController,
                    child: Image.asset(
                      'assets/images/earth.jpg',
                      fit: BoxFit.contain,
                      height: _height * 0.8,
                      width: _width,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: _height * 0.76,
                left: _width * 0.15,
              ),
              child: SizedBox(
                width: _width * 0.7,
                height: _height * 0.08,
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () => {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
