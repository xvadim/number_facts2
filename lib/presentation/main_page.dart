import 'package:flutter/material.dart';

import 'fact_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: const FactView(),
      ),
    );
  }
}
