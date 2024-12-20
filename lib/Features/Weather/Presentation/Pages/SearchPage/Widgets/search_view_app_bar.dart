import 'package:flutter/material.dart';
import '../../../../../../generated/l10n.dart';

class SearchViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(S.of(context).search_page_title));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
