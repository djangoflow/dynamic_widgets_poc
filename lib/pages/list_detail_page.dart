import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListDetailPage extends StatelessWidget {
  const ListDetailPage({
    super.key,
    @PathParam('id') required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail $id'),
      ),
    );
  }
}
