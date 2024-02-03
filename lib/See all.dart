import 'package:flutter/material.dart';
import 'package:real_estate/houses_widget.dart';

class SeeAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Houses'),
      ),
      body: HousesWidget(),
    );
  }
}