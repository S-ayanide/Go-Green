import 'package:flutter/material.dart';
import 'package:go_green/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:go_green/model/articles.dart';
import 'package:go_green/helper/climate_data.dart';
import 'package:go_green/widgets/BlogTile.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Climate extends StatefulWidget with NavigationStates {
  @override
  _ClimateState createState() => _ClimateState();
}

class _ClimateState extends State<Climate> {
  List<ArticleModel> climateNews = List<ArticleModel>();
  bool _loading = true;

  getClimateNews() async {
    ClimateData climateData = ClimateData();
    await climateData.getClimateNews();
    climateNews = climateData.climateNews;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getClimateNews();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _loading
            ? Center(
                child: LiquidCustomProgressIndicator(
                    value: 0.55,
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    backgroundColor: Color(0x10000000),
                    direction: Axis.vertical,
                    shapePath: _buildHeartPath()),
              )
            : AnimationLimiter(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: climateNews.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: Container(
                            padding: EdgeInsets.all(40),
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, 2),
                                blurRadius: 4,
                                spreadRadius: 0,
                              ),
                            ]),
                            child: BlogTile(
                              imageUrl: climateNews[index].urlToImage,
                              title: climateNews[index].title,
                              description: climateNews[index].description,
                              url: climateNews[index].url,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}

Path _buildHeartPath() {
  return Path()
    ..moveTo(55, 15)
    ..cubicTo(55, 12, 50, 0, 30, 0)
    ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
    ..cubicTo(0, 55, 20, 77, 55, 95)
    ..cubicTo(90, 77, 110, 55, 110, 37.5)
    ..cubicTo(110, 37.5, 110, 0, 80, 0)
    ..cubicTo(65, 0, 55, 12, 55, 15)
    ..close();
}
