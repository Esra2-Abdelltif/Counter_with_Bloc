import 'package:counter_with_bloc/UI/Screens/Counter/bloc/state.dart';
import 'package:counter_with_bloc/UI/Screens/Counter/bloc/state.dart';
import 'package:counter_with_bloc/UI/Screens/Counter/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/state.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (BuildContext context,CounterStates state){
          if(state is InitialCounterState) print('intial state');
          if(state is IncrementCounterValue) print('plus state');
          if(state is DecrementCounterValue) print('minus state');

        },
    builder: (BuildContext context ,CounterStates state) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Counter BLoC'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },

                    child:
                    Text('+',
                      style:
                      TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),),


                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text('${(CounterCubit
                        .get(context)
                        .counter).toString()}', style: TextStyle(
                      fontSize: 30,),),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: Text('-', style:
                    TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),),

                  ),
                ],
              ),
              SizedBox(height: 50,),

            ],),
        ),
      );
    }),
    );

  }
}
