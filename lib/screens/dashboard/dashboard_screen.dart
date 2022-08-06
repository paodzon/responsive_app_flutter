import 'package:flutter/material.dart';
import 'package:web_responsive_app/constants.dart';
import 'package:web_responsive_app/screens/dashboard/widgets/header.dart';
import 'package:web_responsive_app/screens/dashboard/widgets/my_files.dart';
import 'package:web_responsive_app/screens/dashboard/widgets/recent_files.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: secondaryColor,
        child: Column(children: [
          const Header(),
          const SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 4,
                  child: Column(
                    children: const [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                    ],
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  child: Text('Container 1'),
                  height: 500,
                  color: bgColor,
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
