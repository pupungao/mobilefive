import 'package:flutter/material.dart';
import 'package:mobilefive/countrydata/data.dart';
import 'package:mobilefive/functions/countrytab.dart';

class searchBox extends StatefulWidget {
  searchBox({super.key});

  @override
  State<searchBox> createState() => searchBoxState();
}
late List<dynamic> search_ct = List.from(countries);
class searchBoxState extends State<searchBox> {
  void updatevalue(String search){
    setState(() {
      search_ct = countries.where((data) => data.name!.toLowerCase()).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: TextEditingController(),
              onChanged: (search) { updatevalue(search);},
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      );
  }
}


