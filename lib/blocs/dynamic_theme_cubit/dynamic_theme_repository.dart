import 'dart:convert';

class DynamicThemeRepository {
  static const _greenTheme = '''{
  "brightness": "light",
  "colorScheme": {
    "background": "#fffcfdf6",
    "brightness": "light",
    "error": "#ffba1a1a",
    "errorContainer": "#ffffdad6",
    "inversePrimary": "#ff78dc77",
    "inverseSurface": "#ff2f312d",
    "onBackground": "#ff1a1c19",
    "onError": "#ffffffff",
    "onErrorContainer": "#ff410002",
    "onInverseSurface": "#fff0f1eb",
    "onPrimary": "#ffffffff",
    "onPrimaryContainer": "#ff002204",
    "onSecondary": "#ffffffff",
    "onSecondaryContainer": "#ff111f0f",
    "onSurface": "#ff1a1c19",
    "onSurfaceVariant": "#ff424940",
    "onTertiary": "#ffffffff",
    "onTertiaryContainer": "#ff002023",
    "outline": "#ff72796f",
    "outlineVariant": "#ffc2c9bd",
    "primary": "#ff006e1c",
    "primaryContainer": "#ffb6f2af",
    "secondary": "#ff52634f",
    "secondaryContainer": "#ffd5e8cf",
    "shadow": "#ff000000",
    "surface": "#fffcfdf6",
    "surfaceTint": "#ff006e1c",
    "surfaceVariant": "#ffdee5d8",
    "tertiary": "#ff38656a",
    "tertiaryContainer": "#ffbcebf0"
  },
  "inputDecorationTheme": {
    "alignLabelWithHint": false,
    "border": {
      "borderRadius": {
        "bottomLeft": {
          "type": "elliptical",
          "x": 8.0,
          "y": 8.0
        },
        "bottomRight": {
          "type": "elliptical",
          "x": 8.0,
          "y": 8.0
        },
        "topLeft": {
          "type": "elliptical",
          "x": 8.0,
          "y": 8.0
        },
        "topRight": {
          "type": "elliptical",
          "x": 8.0,
          "y": 8.0
        },
        "type": "only"
      },
      "borderSide": {
        "color": "#ff000000",
        "strokeAlign": -1.0,
        "style": "solid",
        "width": 1.0
      },
      "gapPadding": 4.0,
      "type": "outline"
    },
    "filled": false,
    "floatingLabelAlignment": "start",
    "floatingLabelBehavior": "auto",
    "isCollapsed": false,
    "isDense": false
  },
  "useMaterial3": true
}
''';

  static Map<String, dynamic> get greenThemeMap => jsonDecode(_greenTheme);
}
