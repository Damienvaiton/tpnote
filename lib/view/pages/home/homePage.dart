import 'package:flutter/material.dart';
import 'package:tpnote/view/pages/detail/detailPage.dart';
import 'package:tpnote/view/pages/detail/detailsearch.dart';
import 'package:tpnote/viewmodel/DataVM.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<String> list = [];

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  void fetchdata() async {
    var data = await DataViewModel().fetchTrendingData();
    setState(() {
      list = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: list == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                //return une la liste dans un joli design
                return ListTile(
                    title: Card(
                  elevation: 2.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    title: Text(
                      list[index],
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      var id3 = list[index];
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                            builder: (context) => detailSearchPage(id: id3,)
                         ),
                       );
                    },
                  ),
                ));
              },
            ),
    );
  }
}
