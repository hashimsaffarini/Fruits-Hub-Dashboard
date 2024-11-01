import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/dashboard/views/dashoboard_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DashoboardView.routeName:
      return MaterialPageRoute(
        builder: (_) => const DashoboardView(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(),
      );
  }
}
