import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/counter_bloc.dart';

class CounterBlocScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc test'),
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, counter) {
          return Center(
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.add),
            onPressed: () {
              counterBloc.add(IncrementCounter());
            },
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            heroTag: null,
            child: Icon(Icons.remove),
            onPressed: () {
              counterBloc.add(DecrementCouter());
            },
          )
        ],
      ),
    );
  }
}
