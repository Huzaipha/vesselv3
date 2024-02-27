// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Apple',
    'Banana',
    'Orange',
    'Pineapple',
    'Blue Berry',
    'Strawberries',
  ];
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuerry = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuerry.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuerry.length,
      itemBuilder: (context, index) {
        var result = matchQuerry[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuerry = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuerry.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuerry.length,
      itemBuilder: (context, index) {
        var result = matchQuerry[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
    // TODO: implement buildActions
  }
}
