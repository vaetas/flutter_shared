import 'package:flutter/material.dart';

/// Wraps [CircularProgressIndicator] inside [Center] widget.
class CircularLoader extends StatelessWidget {
  const CircularLoader();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
