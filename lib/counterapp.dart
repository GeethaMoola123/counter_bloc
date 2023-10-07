import 'package:counterapp_bloc/bloc/counter_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_bloc.dart';
import 'bloc/counter_state.dart';


class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterBloc,CounterState>(builder: (context,state){
        return Center(child: Text("${state.counter}"),);
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          },child: Icon(Icons.add),
          ),
          FloatingActionButton(onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
          },child: Icon(Icons.minimize),
          )
        ],
      ),
    );
  }
}
