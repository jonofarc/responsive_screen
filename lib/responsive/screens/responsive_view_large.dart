import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:size_test/responsive/widgets/number_grid.dart';
import 'package:size_test/responsive/widgets/random_image.dart';
import 'package:size_test/utils/texts.dart';

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
          child: const RandomImage(),
        ),
      ),
      Expanded(
        flex: 7,
        child: Container(
          alignment: Alignment.center,
          child: const AutoSizeText(
            loreIpsum,
            style: TextStyle(fontSize: 30),
            maxLines: 11,
          ),
        ),
      ),
      const Expanded(
        flex: 10,
        child: SingleChildScrollView(
            child: NumberGrid(
          crossAxisCount: 4,
        )),
      ),
    ]);
  }
}
