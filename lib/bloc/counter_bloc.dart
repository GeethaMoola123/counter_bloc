import 'package:counterapp_bloc/bloc/counter_events.dart';
import 'package:counterapp_bloc/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterBloc extends Bloc<CounterEvents,CounterState>{
  CounterBloc():super(InitialState()){
    on<IncrementEvent>((event,emit){
      emit(CounterState(counter: state.counter+1));
    });


    on<DecrementEvent>((event,emit){
      emit(CounterState(counter: state.counter-1));
    });
  }
}