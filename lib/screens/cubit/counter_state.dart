part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int count;

  CounterState(this.count);

  factory CounterState.initial() {
    return CounterState(0);
  }

  @override
  bool get stringify => super.stringify;

  @override
  List<Object> get props => [count];
}
