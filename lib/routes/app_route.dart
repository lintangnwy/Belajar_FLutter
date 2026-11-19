import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lintang/GridView/gridBasic.dart';
import 'package:flutter_lintang/container_widget/container_widget.dart';
import 'package:flutter_lintang/latihan/latihan1.dart';
import 'package:flutter_lintang/list_widget/list_basic.dart';
import 'package:flutter_lintang/navigation/menus.dart';
import 'package:flutter_lintang/pages/comments_page.dart';
import 'package:flutter_lintang/pages/form_input_page.dart';
import 'package:flutter_lintang/pages/perpus_input_page.dart';

class AppRoute {
  static const menus = '/';
  static const grid = '/GridView';
  static const list = '/Latihan1';
  static const listBasic = '/list-basic';
  static const containerwidget = '/container_widget';
  static const formulir = '/FormEkskul';
  static const perpustakaan = '/Perpustakaan';
  static const comments = '/CommentsPage';

  static Map<String, WidgetBuilder> routes = {
    menus: (context) => const Menu(),
    grid: (context) => const Gridbasic(),
    list: (context) => const Latihan1(),
    listBasic: (context) => const ListBasic(),
    containerwidget: (context) => const BelajarContainer(),
    formulir: (context) => const FormEkskul(),
    perpustakaan: (context) => const Perpustakaan(),
    comments: (context) => const CommentsPage(),
  };
}