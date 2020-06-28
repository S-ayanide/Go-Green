import 'package:bloc/bloc.dart';
import 'package:go_green/pages/earth3d.dart';
import 'package:go_green/pages/climate.dart';
import 'package:go_green/pages/aboutUs.dart';
import 'package:go_green/pages/hack20.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  ClimateClickedEvent,
  AboutUsClickedEvent,
  HackDeatilsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Earth3D();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Earth3D();
        break;
      case NavigationEvents.ClimateClickedEvent:
        yield Climate();
        break;
      case NavigationEvents.AboutUsClickedEvent:
        yield AboutUs();
        break;
      case NavigationEvents.HackDeatilsClickedEvent:
        yield Hack20();
        break;
    }
  }
}
