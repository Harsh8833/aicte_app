import 'package:aicte_app/MVVM/view%20model/bureaus%20view%20model/bureaus_view_model.dart';
import 'package:aicte_app/MVVM/view%20model/navigation%20viewmodel/navigation_view_model.dart';
import 'package:aicte_app/MVVM/view/Homepage/homepage.dart';
import 'package:aicte_app/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavigationViewModel()),
          ChangeNotifierProvider(create: (_) => BureausViewModel()),
        ],
        child: MaterialApp(
          title: 'AICTE',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: Homepage.route,
          onGenerateRoute: RouteGenerator.generateRoute,
        ));
  }
}
