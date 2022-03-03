
import 'package:counter_with_bloc/UI/Screens/Counter/bloc/events.dart';
import 'package:counter_with_bloc/UI/Screens/Counter/bloc/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


 class CounterBloc extends Bloc<CounterEvent,CounterStates>{
  CounterBloc(CounterStates initialState) : super(initialState);
  int count =0;
   @override
  CounterStates get initialState => intialCounterStates();
   @override

   // static CounterBloc get (BuildContext context)=>Bloc.provider.of(context);
   Stream<CounterStates> mapEventToState(CounterEvent event) async*
   {
     if(event is plusCountervalue)
       {
         yield* _changevalue('plus');
       }
     if(event is minsCountervalue)
     {
       yield* _changevalue('mins');
     }
   }

  Stream<CounterStates> _changevalue(String s) async*{
     switch(s)
    {
       case 'plus':
         count++;
         break;
       case 'mins':
         if(count!=0)
           {
             count--;
           }
         break;

     }
     yield SuccessCounterStates(s);
  }



}

