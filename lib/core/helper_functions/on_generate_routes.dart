import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/add_product/ui/views/add_product_view.dart';
import 'package:fruits_hub_dashboard/features/dashboard/views/dashoboard_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DashoboardView.routeName:
      return MaterialPageRoute(
        builder: (_) => const DashoboardView(),
      );

    case AddProductView.routeName:
      return MaterialPageRoute(
        builder: (_) => const AddProductView(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(),
      );
  }
}
