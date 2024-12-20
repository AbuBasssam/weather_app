import 'package:flutter/material.dart';
import 'Widgets/HomePageBody/home_page_body.dart';
import 'Widgets/home_page_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(),
      body: HomePageBody(),
    );
  }
}
