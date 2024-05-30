import 'package:flutter/material.dart';
import 'package:size_test/responsive/screens/responsive_view_large.dart';
import 'package:size_test/responsive/screens/responsive_view_medium.dart';
import 'package:size_test/responsive/screens/responsive_view_small.dart';
import 'package:size_test/utils/responsive.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  ResponsiveScreenState createState() => ResponsiveScreenState();
}

class ResponsiveScreenState extends State<ResponsiveScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Screen'),
      ),
      body: const Responsive(
        key: Key("ResponsiveScreen"),
        small: ResponsiveViewSmall(),
        medium: ResponsiveViewMedium(),
        large: ResponsiveViewLarge(),
      ),
    );
  }
}
