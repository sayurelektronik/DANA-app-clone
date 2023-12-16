
import 'package:dana_app_clone/providers/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/mainpages.dart';
import 'utils/utils.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();
    return ChangeNotifierProvider(
      create: (context) => BottomNavProvider(),
      child: MaterialApp(
        builder: (context, child) =>
            ResponsiveWrapper.builder(child, defaultScale: true),
        debugShowCheckedModeBanner: false,
        title: 'DANA clone',
        theme: theme,
        home: const MainPage(),
      ),
    );
  }
}
