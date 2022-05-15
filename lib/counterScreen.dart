// ignore_for_file: prefer_const_constructors, unused_local_variable, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_1/bloc/counterbloc_bloc.dart';
import 'package:flutter_bloc_1/cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final bloc = context.watch<CounterblocBloc>();
    final state = context.watch<CounterblocBloc>().state;
    final cubit = context.watch<CounterCubit>();
    final cubit_state = context.watch<CounterCubit>().state;
    return Scaffold(
        appBar: AppBar(
          title: Text('Bloc 8 Counter example'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Image(
              image: AssetImage('assets/bloc.png'),
              fit: BoxFit.fill,
            )),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Using Bloc ',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${bloc.counter}',
                        style: TextStyle(fontSize: 30),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            bloc.add(Increment());
                          },
                          child: Text('increment')),
                      ElevatedButton(
                          onPressed: () {
                            bloc.add(Decrement());
                          },
                          child: Text('Decrement')),
                      ElevatedButton(
                          onPressed: () {
                            bloc.add(SetValue());
                          },
                          child: Text('Const value'))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Using Cubit',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${cubit.counter}',
                        style: TextStyle(fontSize: 30),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            cubit.inc();
                          },
                          child: Text('increment')),
                      ElevatedButton(
                          onPressed: () {
                            cubit.dec();
                          },
                          child: Text('Decrement')),
                      ElevatedButton(
                          onPressed: () {
                            cubit.setvalue();
                          },
                          child: Text('Const value'))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
