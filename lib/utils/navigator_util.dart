import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/router/application.dart';
import 'package:flutterdemo/router/routes.dart';

class NavigatorUtil {
  // replace=true就是把这个页面移除,后退时不会退到这个界面上来
  // home 页面
  static goHomePage(BuildContext context) {
    Application.router.navigateTo(context, Routers.home,
        transition: TransitionType.fadeIn, replace: true);
  }

  // 路由传参页面
  static goParamPage(
      BuildContext context, String name, String age, String score, String sex) {
    Application.router.navigateTo(context,
        Routers.paramPage + "?name=$name&age=$age&score=$score&sex=$sex",
        transition: TransitionType.cupertino);
  }

  /// 带参数的返回
  static void goBackWithParams(BuildContext context, result) {
    Navigator.pop(context, result);
  }

  // 跳转到有参数返回的页面
  static Future goReturnParamsPage(BuildContext context) {
    return Application.router.navigateTo(context, Routers.returnParamsPage,
        transition: TransitionType.cupertino);
  }

  static goProviderCounter(BuildContext context) {
    return Application.router.navigateTo(context, Routers.providerPage,
        transition: TransitionType.cupertino);
  }

  static goListViewDataPage(BuildContext context) {
    return Application.router.navigateTo(context, Routers.listDataPage,
        transition: TransitionType.cupertino);
  }

  static goDialogDemoPage(BuildContext context) {
    return Application.router.navigateTo(context, Routers.dialogDemoPage,
        transition: TransitionType.cupertino);
  }

  static goLoadingDemoPage(BuildContext context) {
    return Application.router.navigateTo(context, Routers.loadingDemoPage,
        transition: TransitionType.cupertino);
  }
}
