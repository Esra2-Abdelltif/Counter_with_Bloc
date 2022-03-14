import 'package:flutter/foundation.dart';

@immutable
abstract class CounterStates
{
  const CounterStates();
}

class InitialCounterState extends CounterStates {}
class IncrementCounterValue extends CounterStates {
  final int Counter;

  IncrementCounterValue(this.Counter);
}
class DecrementCounterValue extends CounterStates{
  final int Counter;

  DecrementCounterValue(this.Counter);
}
