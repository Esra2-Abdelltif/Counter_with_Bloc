import 'package:bloc/bloc.dart';
import 'package:counter_with_bloc/bloc/state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
 // CounterCubit(CounterEvents initialState) : super(initialState);


  CounterCubit() : super(InitialCounterState());
  static  CounterCubit get(context) => BlocProvider.of(context);
  int counter=0;
  void minus(){
    if(counter!=0){
      counter--;
      emit(DecrementCounterValue());
    }

  }
  void plus(){
    counter++;
    emit(IncrementCounterValue());
  }

}