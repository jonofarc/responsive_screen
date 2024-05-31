import 'package:flutter/material.dart';

class NumberGrid extends StatelessWidget {
  const NumberGrid({this.crossAxisCount = 2, super.key});
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      childAspectRatio: 2.0, // Adjust as needed
      physics: const NeverScrollableScrollPhysics(), // Disables scrolling
      children: List.generate(
        50,
        (int idx) => Card(
          color: Colors.teal[600],
          child: SizedBox(
            height: 100,
            child: Center(
              child: Text('${idx + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
