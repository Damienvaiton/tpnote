import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tpnote/model/dartModel.dart';
import 'package:tpnote/viewmodel/DataVM.dart';

class detailSearchPage extends StatefulWidget {
  const detailSearchPage({super.key, required this.id});

  final String id;

  @override
  State<detailSearchPage> createState() => _detailSearchPageState();
}

class _detailSearchPageState extends State<detailSearchPage> {
  DetailModel detailModel = DetailModel();
  DataViewModel dataViewModel = DataViewModel();

  @override
  void initState() {
    super.initState();
    fetchDetail();
  }

  void fetchDetail() async {
    var data = await dataViewModel.fetchDetailData(widget.id);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Detail Page'),
            Text(detailModel.results![0].title ?? 'No title'),
            //Afficher le gif avec l'url
            Image.network(detailModel.results![0].itemurl ?? 'No image'),
            Text(detailModel.results![0].itemurl ?? 'No description'),
          ],
        ),
      ),
    );
  }
}
