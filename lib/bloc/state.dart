import 'package:flutter/foundation.dart';

@immutable
abstract class CounterStates
{
  const CounterStates();
}

class InitialCounterState extends CounterStates {}
class IncrementCounterValue extends CounterStates {}
class DecrementCounterValue extends CounterStates{}
