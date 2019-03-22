library routes;

import "NewRoute.dart";
import 'package:flutter_demo/routes/FormTestRoute.dart';
import 'RowColumnDemo1.dart';
import 'RowColumnDemo2.dart';

var routesJson = {
  "new_page": (context) => NewRoute(),
  "form_demo": (context) => FormTestRoute(),
  "row_column_demo1": (context) => RowColumnDemo1(),
  "row_column_demo2": (context) => RowColumnDemo2(),
};