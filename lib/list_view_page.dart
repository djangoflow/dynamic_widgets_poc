import 'package:auto_route/auto_route.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

@RoutePage()
class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return JsonWidgetData.fromDynamic(
      registry: JsonWidgetRegistry.instance,
      {
        "type": "set_value",
        "args": {
          "values": {
            "entries": {
              "values": items,
            },
            "template": {
              "type": "theme",
              "args": {
                "data": {
                  "type": "theme_data",
                  "args": {
                    "listTileTheme": {
                      "type": "list_tile_theme_data",
                      "args": {
                        "tileColor": {"type": "color"},
                      }
                    },
                  }
                },
                "child": {
                  "type": "list_tile",
                  "args": {
                    "subtitle": {
                      "type": "text",
                      "listen": ["value"],
                      "args": {"text": "\${value['subtitle']}"}
                    },
                    "title": {
                      "type": "text",
                      "listen": ["value"],
                      "args": {"text": "\${value['title']}"}
                    },
                    "onTap": "\${navigate(value['url'])}",
                  }
                }
              }
            }
          },
          "child": {
            "type": "scaffold",
            "args": {
              "appBar": {
                "type": "app_bar",
                "args": {
                  "title": {
                    "type": "row",
                    "args": {
                      "crossAxisAlignment": "start",
                      "mainAxisAlignment": "start",
                      "mainAxisSize": "min",
                      "children": [
                        {
                          "type": "text",
                          "args": {"text": "Dynamic List ("}
                        },
                        {
                          "type": "text",
                          "args": {"text": "\${length(entries['values'])}"}
                        },
                        {
                          "type": "text",
                          "args": {"text": ")"}
                        }
                      ]
                    }
                  }
                }
              },
              "body": {
                "type": "list_view",
                "args": {
                  "children": "\${for_each(entries['values'], 'template')}"
                }
              }
            }
          }
        }
      },
    ).build(context: context);
  }

  List<Map<String, dynamic>> get items => List.generate(
        20,
        (index) => _ListItem(
          title: 'Item $index',
          subtitle: 'This is item $index',
          url: '/list-detail/$index',
          color: "#F00",
        ).toMap(),
      );
}

class _ListItem {
  final String title;
  final String subtitle;
  final String url;
  final String color;

  _ListItem({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.color,
  });

  Map<String, dynamic> toMap() => {
        "title": title,
        "subtitle": subtitle,
        "url": url,
        "color": color,
      };
}
