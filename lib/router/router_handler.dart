import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/demo/demo_page.dart';
import 'package:flutterdemo/pages/demo/dialog_page.dart';
import 'package:flutterdemo/pages/demo/list_view_page.dart';
import 'package:flutterdemo/pages/demo/loading_dmeo.dart';
import 'package:flutterdemo/pages/demo/provider_counter.dart';
import 'package:flutterdemo/pages/demo/return_params_page.dart';
import 'package:flutterdemo/pages/home/home_page.dart';
import 'package:flutterdemo/pages/splash/splash_page.dart';

var splashHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SplashPage();
});

var homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

var paramHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  print('---------------');
  print(params);
  print('---------------');
  String name = params["name"]?.first;
  String age = params["age"]?.first;
  String sex = params["sex"]?.first;
  String score = params["score"]?.first;

  return DemoPage(
    name: name,
    age: age,
    sex: sex,
    score: score,
  );
});

var returnParamHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ReturnParamsPage();
});

var providerPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ProviderCounter();
});

var listPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ListViewPage();
});

var dialogPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return DialogPage();
});

var loadingPageHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoadingDemoPage();
});
