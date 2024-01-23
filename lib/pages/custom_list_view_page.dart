import 'package:auto_route/auto_route.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

@RoutePage()
class CustomListViewPage extends StatelessWidget {
  const CustomListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return JsonWidgetData.fromDynamic(
      registry: JsonWidgetRegistry.instance,
      {
        "type": "set_value",
        "args": {
          "values": {
            "indexNumber": 0,
          },
          "child": {
            "type": "scaffold",
            "args": {
              "body": {
                "type": "column",
                "args": {
                  "children": [
                    {
                      "type": "expanded",
                      "args": {
                        "child": {
                          "type": "custom_list_view",
                          "args": {
                            "onListItemTap": r"${onItemTap('indexNumber')}",
                          }
                        },
                      }
                    },
                    {
                      "type": "text",
                      "listen": ["indexNumber"],
                      "args": {"text": "\${indexNumber}"}
                    }
                  ]
                }
              }
            }
          }
        },
      },
    ).build(context: context);
  }
}

//   List<Map<String, dynamic>> get items => List.generate(
//         20,
//         (index) => _ListItem(
//           title: 'Item $index',
//           subtitle: 'This is item $index',
//           url: '/list-detail/$index',
//           color: "#F00",
//         ).toMap(),
//       );
// }

// class _ListItem {
//   final String title;
//   final String subtitle;
//   final String url;
//   final String color;

//   _ListItem({
//     required this.title,
//     required this.subtitle,
//     required this.url,
//     required this.color,
//   });

//   Map<String, dynamic> toMap() => {
//         "title": title,
//         "subtitle": subtitle,
//         "url": url,
//         "color": color,
//       };
// }
