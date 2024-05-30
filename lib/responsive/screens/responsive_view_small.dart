import 'package:flutter/material.dart';

class ResponsiveViewSmall extends StatelessWidget {
  const ResponsiveViewSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 2,
        child: Container(
          alignment: Alignment.center,
          color: Colors.blueAccent,
          child: const Text('Mobile', style: TextStyle(fontSize: 24)),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          alignment: Alignment.center,
          color: Colors.grey,
          child: const Text('Mobile', style: TextStyle(fontSize: 24)),
        ),
      ),
      Expanded(
        flex: 7,
        child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text('Mobile', style: TextStyle(fontSize: 24)),
        ),
      ),
    ]);
  }
}
