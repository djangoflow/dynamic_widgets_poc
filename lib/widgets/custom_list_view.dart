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
  const CustomListView({
    super.key,
    required this.onListItemTap,
    required this.itemBuilder,
  });
  final Function(String value) onListItemTap;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: itemBuilder,
    );
  }
}
