import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/router/application.dart';
import 'package:flutterdemo/router/routes.dart';
import 'package:flutterdemo/store/counter_provider.dart';
import 'package:flutterdemo/store/list_data_provider.dart';
import 'package:flutterdemo/store/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) =>
            ThemeBean(themeType: ThemeType.light, themeData: ThemeData.light()),
      ),
      ChangeNotifierProvider(create: (_) => CounterProvider()),
      ChangeNotifierProvider(
        create: (_) => ListDataProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp() {
    final router = Router();
    Routers.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeBean>(context, listen: true).themeData,
      onGenerateRoute: Application.router.generator,
    );
  }
}
