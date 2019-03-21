library routes;

import "NewRoute.dart";
import 'package:flutter_demo/routes/FormTestRoute.dart';

var routesJson = {
  "new_page": (context) => NewRoute(),
  "form_demo": (context) => FormTestRoute(),
};