import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return JsonWidgetData.fromDynamic(
      {
        "type": "scaffold",
        "args": {
          "appBar": {
            "type": "app_bar",
            "args": {
              "title": {
                "type": "text",
                "args": {"text": "List View"}
              }
            }
          },
          "body": {
            "type": "list_view",
            "args": {
              "children": [
                {
                  "type": "card",
                  "args": {
                    "child": {
                      "type": "list_tile",
                      "args": {
                        "title": {
                          "type": "text",
                          "args": {"text": "One"}
                        },
                        "subtitle": {
                          "type": "text",
                          "args": {"text": "This is the first item"}
                        }
                      }
                    }
                  }
                },
                {
                  "type": "card",
                  "args": {
                    "child": {
                      "type": "list_tile",
                      "args": {
                        "title": {
                          "type": "text",
                          "args": {"text": "Two"}
                        },
                        "subtitle": {
                          "type": "text",
                          "args": {"text": "This is the second item"}
                        }
                      }
                    }
                  }
                },
                {
                  "type": "card",
                  "args": {
                    "child": {
                      "type": "list_tile",
                      "args": {
                        "title": {
                          "type": "text",
                          "args": {"text": "Three"}
                        },
                        "subtitle": {
                          "type": "text",
                          "args": {"text": "This is the third item"}
                        }
                      }
                    }
                  }
                },
                {
                  "type": "card",
                  "args": {
                    "child": {
                      "type": "list_tile",
                      "args": {
                        "title": {
                          "type": "text",
                          "args": {"text": "Four"}
                        },
                        "subtitle": {
                          "type": "text",
                          "args": {"text": "This is the fourth item"}
                        }
                      }
                    }
                  }
                },
                {
                  "type": "card",
                  "args": {
                    "child": {
                      "type": "list_tile",
                      "args": {
                        "title": {
                          "type": "text",
                          "args": {"text": "Five"}
                        },
                        "subtitle": {
                          "type": "text",
                          "args": {"text": "This is the fifth item"}
                        }
                      }
                    }
                  }
                },
                {
                  "type": "card",
                  "args": {
                    "child": {
                      "type": "list_tile",
                      "args": {
                        "title": {
                          "type": "padding",
                          "args": {
                            "padding": "20",
                            "child": {
                              "type": "text",
                              "args": {"text": "Six"}
                            }
                          }
                        },
                        "subtitle": {
                          "type": "text",
                          "args": {
                            "text": "This is the sixth item with some padding",
                          }
                        }
                      }
                    }
                  }
                },
              ]
            }
          }
        }
      },
    ).build(context: context);
  }
}
