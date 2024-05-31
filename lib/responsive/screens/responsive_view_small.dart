import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:size_test/responsive/widgets/number_grid.dart';
import 'package:size_test/responsive/widgets/random_image.dart';
import 'package:size_test/utils/texts.dart';

class ResponsiveViewSmall extends StatelessWidget {
  const ResponsiveViewSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Add padding to the column
            child: Column(
              children: [
                Container(
                  height: 200, // Adjust the height as needed
                  alignment: Alignment.center,
                  child: const RandomImage(),
                ),
                Container(
                  height: 200, // Adjust the height as needed
                  alignment: Alignment.center,
                  child: const AutoSizeText(
                    loreIpsum,
                    style: TextStyle(fontSize: 30),
                    maxLines: 11,
                  ),
                ),
                const NumberGrid(
                  crossAxisCount: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
