import 'package:get/get.dart';
import 'package:getxdemo/module/controller/controller_binding.dart';
import 'package:getxdemo/module/screens/home_page.dart';
import 'package:getxdemo/module/screens/test_page.dart';

class RouteClass{
  static String home='/';
  static String test='/test';

  static String getHomeRoute()=>home;
  static String gettestRoute()=>test;

  static List<GetPage> routes=[
    GetPage(page: ()=>Home(),name: home,binding: ControllerBindings()),
    GetPage(page: ()=>TestPage(),name: test,transition: Transition.fadeIn,binding: ControllerBindings(),transitionDuration: Duration(seconds: 1))
  ];
}