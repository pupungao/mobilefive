import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class countryTab extends StatefulWidget {
  const countryTab({super.key});

  @override
  State<countryTab> createState() => countryTabState();
}

late List<dynamic> countries = [];

class countryTabState extends State<countryTab> {
  Future<void> getCountry() async {
    final response = await http.get(
      Uri.parse('https://api.sampleapis.com/countries/countries'),
    );
    if (response.statusCode == 200) {
      setState(() {
        countries = json.decode(response.body);
        countries?.sort((a, b) => a['name'].compareTo(b['name']));
      });
    } else {}
  }

  void initState() {
    super.initState();
    getCountry();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: countries?.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text('${countries?[index]["name"]}'),
              subtitle: Text('${countries?[index]["abbreviation"]}'),
              trailing: countries![index]["media"]["flag"] != null
                  ? Image.network(countries![index]["media"]["flag"],
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                      return Container();
                    })
                  : Container());
        });
  }
}
