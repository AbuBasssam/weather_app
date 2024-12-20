import 'package:flutter/material.dart';
import '../../../../../../generated/l10n.dart';
import '../../SearchPage/Widgets/search_button.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(S.of(context).home_page_title), //'Home Page'
      actions: const [SearchButton()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
