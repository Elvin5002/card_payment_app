import 'package:flutter/material.dart';

extension NumExtention on num{
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}