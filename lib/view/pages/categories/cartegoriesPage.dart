import 'package:flutter/material.dart';
import 'package:tpnote/model/categorie_model.dart';
import 'package:tpnote/view/pages/detail/detailsearch.dart';
import 'package:tpnote/viewmodel/DataVM.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
      // ignore: unnecessary_null_comparison
      body : tags == null ? const Center(child: CircularProgressIndicator()) : ListView.builder(
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
