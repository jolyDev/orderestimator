
//Creating a class user to store the data;
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/gestures.dart';

class Range
{
  final double bottom;
  final double top;
  Range(this.bottom, this.top );
}

class Point
{
  final double x;
  final double y;
  Point(this.x, this.y );
}

class Estimate {

  late final Range chance;
  late final Range dataDist;
  late final List<Point> spots;

  Estimate(String raw_data)
  {
  var data = json.decode(raw_data);
  chance = Range(data["chance"]["bottom"].toDouble(), data["chance"]["top"].toDouble());
  dataDist = Range(data["data_distribution"]["bottom"].toDouble(), data["data_distribution"]["top"].toDouble());

  spots = [for (var item in data["spots"]) Point(item[0].toDouble(), item[1].toDouble())];
  }
}
