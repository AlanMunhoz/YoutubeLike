import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear)
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: const Icon(Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    if(query.isNotEmpty) {
      var list = [
        "Android",
        "Android Navigation",
        "iOS",
        "Android Jetpack Compose",
        "Hybrid Flutter",
        "Hybrid React Native"
      ];
      var filteredList = list.where(
              (element) => element.toLowerCase().contains(query.toLowerCase())
      ).toList();

      return ListView.builder(
          itemCount: filteredList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(filteredList[index]),
              onTap: () {
                close(context, filteredList[index]);
              },
            );
          }
      );
    } else {
      return const Center(
          child: Text(
            "There are no results for your search...",
            style: TextStyle(fontSize: 20),
          )
      );
    }
  }
}