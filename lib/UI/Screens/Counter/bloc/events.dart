import 'package:flutter/cupertino.dart';

@immutable
abstract class CounterEvent {

  CounterEvent();
}
class plusCountervalue extends CounterEvent{}
class minsCountervalue extends CounterEvent{}