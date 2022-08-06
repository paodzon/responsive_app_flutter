import 'package:flutter/material.dart';
import 'package:web_responsive_app/constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'My Files',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Spacer(),
              ElevatedButton.icon(
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20)),
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Add New')),
            ],
          ),
          const SizedBox(height: defaultPadding),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  color: bgColor,
                  child: Center(child: Text('$index')),
                );
              }),
        ],
      ),
    );
  }
}
