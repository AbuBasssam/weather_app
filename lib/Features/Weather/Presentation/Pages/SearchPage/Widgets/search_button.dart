import 'package:flutter/material.dart';
import '../search_page.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          navigateSearchView(context);
        });
  }

  void navigateSearchView(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const SearchPage();
    }));
  }
}
