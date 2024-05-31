import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:size_test/responsive/widgets/number_grid.dart';
import 'package:size_test/responsive/widgets/random_image.dart';
import 'package:size_test/utils/texts.dart';

class ResponsiveViewMedium extends StatelessWidget {
  const ResponsiveViewMedium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.center,
                  child: const RandomImage(),
                ),
              ),
              const Expanded(
                flex: 5,
                child: AutoSizeText(
                  loreIpsum,
                  style: TextStyle(fontSize: 30),
                  maxLines: 11,
                ),
              ),
            ],
          ),
          const NumberGrid(),
        ],
      ),
    );
  }
}
