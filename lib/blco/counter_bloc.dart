import 'package:block_arch/blco/counter_event_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  Stream<int> mapEventToState(CounterEvent evetnt) async* {
    if (evetnt is IncrementEvent) {
      yield state + 1;
    } else if (evetnt is DecrementEvent) {
      yield state - 1;
    }
  }
}
