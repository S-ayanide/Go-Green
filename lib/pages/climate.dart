import 'package:flutter/material.dart';
import 'package:go_green/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:go_green/model/articles.dart';
import 'package:go_green/helper/climate_data.dart';
import 'package:go_green/widgets/BlogTile.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
                child: CircularProgressIndicator(),
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
