import 'package:flutter/material.dart';
import 'Widgets/search_text_field.dart';
import 'Widgets/search_view_app_bar.dart';

class SearchPage extends StatelessWidget {
  //VoidCallback? updateUi;
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(appBar: SearchViewAppBar(), body: SearchTextField());
}
