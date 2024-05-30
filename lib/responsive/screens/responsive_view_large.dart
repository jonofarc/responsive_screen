import 'package:flutter/material.dart';

class ResponsiveViewLarge extends StatelessWidget {
  const ResponsiveViewLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 4,
        child: Container(
          alignment: Alignment.center,
          color: Colors.blueAccent,
          child: const Text('Desktop', style: TextStyle(fontSize: 24)),
        ),
      ),
      Expanded(
        flex: 7,
        child: Container(
          alignment: Alignment.center,
          color: Colors.grey,
          child: const Text('Desktop', style: TextStyle(fontSize: 24)),
        ),
      ),
      Expanded(
        flex: 10,
        child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text('Desktop', style: TextStyle(fontSize: 24)),
        ),
      ),
    ]);
  }
}
