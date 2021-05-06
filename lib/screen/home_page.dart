import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sellbag/widget/common_widget.dart';

import '../model/item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<int> list = [0, 1, 2, 3, 4, 5];
  CategoriesData data = CategoriesData(name: "Jay", image: "url");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidget.appBar(
        name: 'Sell Bag',
        context: context,
      ),
      body: Container(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) =>
                    setState(() => currentIndex = index),
              ),
              items: list.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: list
                  .map((index) => Container(
                        margin: EdgeInsets.all(5),
                        height: 15,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == currentIndex
                              ? Colors.black
                              : Colors.grey,
                        ),
                      ))
                  .toList(),
            ),
            display(data),
          ],
        ),
      ),
      drawer: CommonWidget.drawer(context: context),
    );
  }

  display(CategoriesData data) {
    return Text("${data.name} ${data.image}");
  }
}
