// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_list_view.dart';

// **************************************************************************
// Generator: JsonWidgetLibraryBuilder
// **************************************************************************

// ignore_for_file: avoid_init_to_null
// ignore_for_file: deprecated_member_use

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_if_null_operators
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

class CustomListViewBuilder extends _CustomListViewBuilder {
  const CustomListViewBuilder({required super.args});

  static const kType = 'custom_list_view';

  /// Constant that can be referenced for the builder's type.
  @override
  String get type => kType;

  /// Static function that is capable of decoding the widget from a dynamic JSON
  /// or YAML set of values.
  static CustomListViewBuilder fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) =>
      CustomListViewBuilder(
        args: map,
      );

  @override
  CustomListViewBuilderModel createModel({
    ChildWidgetBuilder? childBuilder,
    required JsonWidgetData data,
  }) {
    final model = CustomListViewBuilderModel.fromDynamic(
      args,
      registry: data.jsonWidgetRegistry,
    );

    return model;
  }

  @override
  CustomListView buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final model = createModel(
      childBuilder: childBuilder,
      data: data,
    );

    return CustomListView(
      key: key,
      onListItemTap: model.onListItemTap,
    );
  }
}

class JsonCustomListView extends JsonWidgetData {
  JsonCustomListView({
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
    required this.onListItemTap,
  }) : super(
          jsonWidgetArgs: CustomListViewBuilderModel.fromDynamic(
            {
              'onListItemTap': onListItemTap,
              ...args,
            },
            args: args,
            registry: registry,
          ),
          jsonWidgetBuilder: () => CustomListViewBuilder(
            args: CustomListViewBuilderModel.fromDynamic(
              {
                'onListItemTap': onListItemTap,
                ...args,
              },
              args: args,
              registry: registry,
            ),
          ),
          jsonWidgetType: CustomListViewBuilder.kType,
        );

  final dynamic Function(Map<String, dynamic>) onListItemTap;
}

class CustomListViewBuilderModel extends JsonWidgetBuilderModel {
  const CustomListViewBuilderModel(
    super.args, {
    required this.onListItemTap,
  });

  final dynamic Function(Map<String, dynamic>) onListItemTap;

  static CustomListViewBuilderModel fromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    final result = maybeFromDynamic(
      map,
      args: args,
      registry: registry,
    );

    if (result == null) {
      throw Exception(
        '[CustomListViewBuilder]: requested to parse from dynamic, but the input is null.',
      );
    }

    return result;
  }

  static CustomListViewBuilderModel? maybeFromDynamic(
    dynamic map, {
    Map<String, dynamic> args = const {},
    JsonWidgetRegistry? registry,
  }) {
    CustomListViewBuilderModel? result;

    if (map != null) {
      if (map is String) {
        map = yaon.parse(
          map,
          normalize: true,
        );
      }

      if (map is CustomListViewBuilderModel) {
        result = map;
      } else {
        registry ??= JsonWidgetRegistry.instance;
        map = registry.processArgs(map, <String>{}).value;
        result = CustomListViewBuilderModel(
          args,
          onListItemTap: map['onListItemTap'],
        );
      }
    }

    return result;
  }

  @override
  Map<String, dynamic> toJson() {
    return JsonClass.removeNull({
      'onListItemTap': onListItemTap,
      ...args,
    });
  }
}

class CustomListViewSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_dynamic_builder_list_view_example/custom_list_view.json';

  static final schema = <String, Object>{
    r'$schema': 'http://json-schema.org/draft-07/schema#',
    r'$id': id,
    'title': 'CustomListView',
    'type': 'object',
    'additionalProperties': false,
    'properties': {
      'onListItemTap': SchemaHelper.anySchema,
    },
  };
}
