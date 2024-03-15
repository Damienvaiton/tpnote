import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tpnote/model/dartModel.dart';
import 'package:tpnote/viewmodel/DataVM.dart';

class detailSearchPage extends StatefulWidget {
  const detailSearchPage({super.key, required this.id, required this.choose});

  final String id;
  final int choose;

  @override
  State<detailSearchPage> createState() => _detailSearchPageState();
}

class _detailSearchPageState extends State<detailSearchPage> {
  DetailModel detailModel = DetailModel();
  DataViewModel dataViewModel = DataViewModel();

  @override
  void initState() {
    super.initState();
    if (widget.choose == 1) {
      fetchSearch();
    } else {
      fetchDetail();
    }
  }

  void fetchDetail() async {
    var data = await dataViewModel.fetchDetailData(widget.id);
    setState(() {
      detailModel = data;
    });
  }

  void fetchSearch() async {
    var data = await dataViewModel.fetchSearchData(widget.id);
    setState(() {
      detailModel = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: ListView.builder(
        itemCount: detailModel.results!.length,
        itemBuilder: (BuildContext context, int index) {
          final result = detailModel.results![index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network("${result.itemurl}.gif"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
