import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_flutter_bloc_counter_app/screens/cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Counter"),
          ),
          body: Center(
            child: Text('Button is pressed ${state.count} times'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              // state.
              context.read<CounterCubit>().increment();
            },
          ),
        );
      },
    );
  }
}
