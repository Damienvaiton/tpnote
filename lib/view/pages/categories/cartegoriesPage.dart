import 'package:flutter/material.dart';
import 'package:tpnote/model/CategorieModel.dart';
import 'package:tpnote/view/pages/detail/detailsearch.dart';
import 'package:tpnote/viewmodel/DataVM.dart';

class categoriesPage extends StatefulWidget {
  const categoriesPage({super.key});

  @override
  State<categoriesPage> createState() => _categoriesPageState();
}

class _categoriesPageState extends State<categoriesPage> {
  CategorieModel categorieModel = CategorieModel();
  List<Tags> tags = [];
  DataViewModel dataViewModel = DataViewModel();

  @override
  void initState() {
    super.initState();
    fetchCategorie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : tags == null ? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: tags.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Card(
              elevation: 2.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                title: Text(
                  tags[index].name!,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  var id3 = tags[index].searchterm!;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detailSearchPage(id: id3, choose: 1,),
                    ),
                  );
                },
  
              ),
            ),
          );
        },
      ),
    );
  }

  void fetchCategorie() async {
    var data = await dataViewModel.fetchCategorieData();
    setState(() {
      categorieModel = data;
      tags = categorieModel.tags!;
    });
  }
}
