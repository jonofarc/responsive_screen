import 'package:flutter/material.dart';

class ResponsiveViewMedium extends StatelessWidget {
  const ResponsiveViewMedium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 5,
        child: Row(children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blueAccent,
              child: const Text('Tablet', style: TextStyle(fontSize: 24)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey,
              child: const Text('Tablet', style: TextStyle(fontSize: 24)),
            ),
          ),
        ]),
      ),
      Expanded(
        flex: 3,
        child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text('Tablet', style: TextStyle(fontSize: 24)),
        ),
      ),
    ]);
  }
}
