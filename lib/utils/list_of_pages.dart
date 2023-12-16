

import 'package:flutter/cupertino.dart';

import '../pages/history_pages.dart';
import '../pages/homepage.dart';
import '../pages/me_pages.dart';
import '../pages/pocket_page.dart';

class ListOfPages {
  static List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const PocketPage(),
    const MePage(),
  ];
}