import 'dart:html';
import '../model/recent_files_model.dart';
import 'package:flutter/material.dart';
import 'package:web_responsive_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Recent Files', style: Theme.of(context).textTheme.headline6),
        Container(
          margin: const EdgeInsets.only(right: 25),
          width: double.infinity,
          child: FileTable(),
        )
      ]),
    );
  }
}

class FileTable extends StatelessWidget {
  const FileTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text('File Name')),
      DataColumn(label: Text('Date')),
      DataColumn(label: Text('Size'))
    ];
  }

  List<DataRow> _createRows() {
    return demoRecentFiles
        .map((file) => DataRow(cells: [
              DataCell(Row(
                children: [
                  SvgPicture.asset(file['icon']),
                  const SizedBox(width: defaultPadding),
                  Text(file['title'])
                ],
              )),
              DataCell(Text(file['date'])),
              DataCell(Text(file['size']))
            ]))
        .toList();
  }
}
