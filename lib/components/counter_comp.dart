import 'package:flutter/material.dart';
import '../main.dart';

class CounterComponent extends StatelessWidget {
  const CounterComponent({required this.setState, super.key});
  final Function(void Function()) setState;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 4.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ElevatedButton(
                onPressed: () {
                  inum++;
                  setState(() {
                    debugPrint(inum.toString());
                  });
                },
                child: const Icon(Icons.add)),
            Text(
              inum.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  inum--;
                  setState(() {
                    debugPrint(inum.toString());
                  });
                },
                child: const Icon(Icons.remove))
          ]),
        ));
  }
}
