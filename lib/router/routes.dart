import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/router/router_handler.dart';

class Routers {
  static String root = "/";
  static String home = "/home";
  static String paramPage = "/param";
  static String returnParamsPage = "/returnParam";
  static String providerPage = "/providerPage";
  static String listDataPage = "/listDataPage";
  static String dialogDemoPage = "/dialogDemoPage";
  static String loadingDemoPage = "/loadingDemoPage";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('handler not find');
      return;
    });
    router.define(root, handler: splashHandler);
    router.define(home, handler: homeHandler);
    router.define(paramPage, handler: paramHandler);
    router.define(returnParamsPage, handler: returnParamHandler);
    router.define(providerPage, handler: providerPageHandler);
    router.define(listDataPage, handler: listPageHandler);
    router.define(dialogDemoPage, handler: dialogPageHandler);
    router.define(loadingDemoPage, handler: loadingPageHandler);
  }
}
