import 'package:flutter/material.dart';
import 'txt_search.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(8.0), child: txtSearch());
  }
}
