import 'package:flutter/material.dart';
import 'package:web_responsive_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_responsive_app/responsive.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        'Dashboard',
        style: Theme.of(context).textTheme.headline5,
      ),
      Spacer(),
      Expanded(child: SearchField()),
      Profile(),
    ]);
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
        decoration: InputDecoration(
            hintText: 'Search', suffixIcon: Icon(Icons.search)));
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white54),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          const Padding(
              padding: EdgeInsets.only(right: 10), child: Icon(Icons.person)),
          if (!Responsive.isMobile(context)) const Text('Paolo Dizon'),
          InkWell(
            onTap: () {},
            child: const Icon(Icons.keyboard_arrow_down),
          )
        ],
      ),
    );
  }
}
