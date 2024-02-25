import 'package:flutter/material.dart';

import '../../components/appbar/custom_appbar.dart';
import '../../constant/constant.dart';
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Constant.grey300,
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}
