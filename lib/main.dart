import 'package:json_dynamic_builder_list_view_example/list_view_page.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ListViewPage(),
    );
  }
}
