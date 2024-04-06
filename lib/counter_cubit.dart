import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}

void main(List<String> args) {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (context) => CounterCubit(),
      child: const CounterPage(),
    ),
  ));
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              state.toString(),
              style: const TextStyle(fontSize: 35),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
