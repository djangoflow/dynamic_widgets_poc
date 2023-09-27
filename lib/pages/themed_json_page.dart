import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_dynamic_builder_list_view_example/blocs/dynamic_theme_cubit/dynamic_theme_cubit.dart';

@RoutePage()
class ThemedJsonPage extends StatelessWidget {
  const ThemedJsonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DjangoflowDynamicThemeCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Themed Json Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ...<({String title, VoidCallback onTap})>[
            (title: 'Load theme', onTap: cubit.loadTheme),
            (title: 'Toggle Theme', onTap: cubit.toggleTheme),
          ].map(
            (e) => Card(child: ListTile(onTap: e.onTap, title: Text(e.title))),
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 20),
          Text(
            'Demo Components',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          TextFormField(
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
            decoration: const InputDecoration(labelText: 'Test Field'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
          const SizedBox(height: 20),
          Builder(builder: (context) {
            bool value = false;
            return StatefulBuilder(
              builder: (context, setState) => SwitchListTile(
                value: value,
                onChanged: (b) {
                  setState(() => value = b);
                },
                title: const Text('Switch List Tile'),
              ),
            );
          }),
        ],
      ),
    );
  }
}
