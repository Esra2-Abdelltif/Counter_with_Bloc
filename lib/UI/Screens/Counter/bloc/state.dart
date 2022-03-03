import 'package:flutter/cupertino.dart';

@immutable
abstract class CounterStates {


  CounterStates();
}
class intialCounterStates extends CounterStates{}
class SuccessCounterStates extends CounterStates{
  late final String type ;

  SuccessCounterStates(this.type);
}
