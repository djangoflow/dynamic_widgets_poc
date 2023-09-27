import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ThemedJsonPage extends StatelessWidget {
  const ThemedJsonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Themed Json Page'),
      ),
    );
  }
}
