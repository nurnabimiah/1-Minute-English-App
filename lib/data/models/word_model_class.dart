

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class WordModel{

  int id;
  String word;
  String synoname;
  String antonyme;

  WordModel(this.id, this.word, this.synoname, this.antonyme);

}


List<WordModel> getWord() {
  return [
    WordModel(1, 'Abate', 'Moderate','Aggravate'),
    WordModel(2, 'Adhere', 'Comply','Condemn'),
    WordModel(3, 'Abolish', ' annul','Setup'),
    WordModel(4, 'Acumen', ' brilliance','ignorance'),
    WordModel(5, 'Abash', 'Disconcert','Uphold'),

  ];
}


class WordDataGridSource extends DataGridSource{

  List<DataGridRow> _wordData = [];



  WordDataGridSource({required List<WordModel> wordDatas}) {
    _wordData = wordDatas
        .map<DataGridRow>((e) => DataGridRow(cells: [
      //DataGridCell<int>(columnName: 'id', value: e.id),
      DataGridCell<String>(columnName: 'Word', value: e.word),
      DataGridCell<String>(columnName: 'Synoname', value: e.synoname),
      DataGridCell<String>(columnName: 'salary', value: e.antonyme),
    ]))
        .toList();
  }


  @override
  List<DataGridRow> get rows => _wordData;



  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    // TODO: implement buildRow
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }

}