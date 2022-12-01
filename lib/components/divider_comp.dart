import 'package:flutter/material.dart';
import '../main.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({Key? key, required this.setState}) : super(key: key);
  final Function(void Function()) setState;

  @override
  Widget build(BuildContext context) {
    double n = 6 / inum;
    return SizedBox(
        height: MediaQuery.of(context).size.height / 4.5,
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(inum < 0 ? '6 / ($inum)' : '6 / $inum',
              style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 48,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Text(n.toStringAsFixed(2)))),
            ],
          )
        ]));
  }
}
