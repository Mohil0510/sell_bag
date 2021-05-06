import 'package:flutter/material.dart';
import 'package:sellbag/widget/common_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidget.appBar(
        name: 'Sell Bag',
        context: context,
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
      drawer: CommonWidget.drawer(context: context),
    );
  }
}
