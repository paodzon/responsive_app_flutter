import 'package:flutter/material.dart';
import 'package:web_responsive_app/responsive.dart';
import 'package:web_responsive_app/screens/dashboard/dashboard_screen.dart';
import 'package:web_responsive_app/screens/main/widgets/sidebar_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SidebarMenu(),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) Expanded(child: SidebarMenu()),
          Expanded(flex: 5, child: DashboardScreen()),
        ],
      )),
    );
  }
}
