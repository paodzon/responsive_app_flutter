import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../model/sidemenu_model.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<SideMenuOptions> options = SideMenuOptions.sideOptions;
    return Column(
      children: [
        DrawerHeader(
          child: Image.asset("/images/logo.png"),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: options.length,
          itemBuilder: (context, index) {
            return DrawerListTile(
                title: options[index].title,
                icon: options[index].icon,
                press: () {});
          },
        ),
      ],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        icon,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
