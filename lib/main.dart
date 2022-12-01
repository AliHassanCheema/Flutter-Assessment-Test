import 'package:flutter_assessment_task/components/multiplier_comp.dart';
import 'package:flutter/material.dart';
import 'components/counter_comp.dart';
import 'components/divider_comp.dart';
import 'components/subtraction_comp.dart';

void main() {
  runApp(const MyApp());
}

int inum = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Task',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: StatefulBuilder(builder: (context, setState) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Test Problem'),
            ),
            body: Column(
              children: [
                MultiplierComponent(setState: setState),
                SubtractionComponent(setState: setState),
                DividerComponent(setState: setState),
                CounterComponent(setState: setState)
              ],
            ),
          );
        }));
  }
}
