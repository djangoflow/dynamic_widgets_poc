import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
part 'custom_list_view.g.dart';

@jsonWidget
abstract class _CustomListViewBuilder extends JsonWidgetBuilder {
  const _CustomListViewBuilder({required super.args});

  @override
  CustomListView buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.onListItemTap});
  final Function(String value) onListItemTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Title $index'),
          subtitle: Text('Subtitle $index'),
          onTap: () => onListItemTap('$index'),
        );
      },
    );
  }
}
