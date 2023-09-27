import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:json_dynamic_builder_list_view_example/router/app_router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () => context.router.push(const ListViewRoute()),
            title: const Text('List View'),
          ),
          ListTile(
            onTap: () => context.router.push(const ThemedJsonRoute()),
            title: const Text('Themed Json'),
          ),
        ],
      ),
    );
  }
}
