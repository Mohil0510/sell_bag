import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:sellbag/global_data.dart';
import 'package:sellbag/model/item.dart';
import 'package:sellbag/screen/search.dart';

class CommonWidget {
  ///***********************************Drawer*************************************/
  static Widget drawer({
    BuildContext context,
  }) {
    return Container(
      width: 270,
      child: Drawer(
        child: ListView(
          children: [
            Container(
              height: 145,
              width: double.infinity,
              decoration: BoxDecoration(
                color: GlobalData.primarycolor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                      backgroundColor: GlobalData.secondarycolor,
                      maxRadius: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'John A. Calderon',
                          style: TextStyle(
                            color: GlobalData.whitetexcolor,
                            fontSize: 18,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image(
                          image: Svg('assets/icons/home.svg'),
                          height: 23,
                        ),
                      ),
                      Text(
                        'HomePage',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: GlobalData.graytexcolor,
                  height: 2,
                  indent: 30,
                  endIndent: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///***************************************AppBar**************************************///

  static Widget appBar({
    String name,
    BuildContext context,
  }) {
    return AppBar(
      title: Text(
        '$name',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: GlobalData.secondarycolor,
        ),
      ),
      iconTheme: IconThemeData(color: GlobalData.secondarycolor),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      actions: [
        IconButton(
          icon: Icon(
            Icons.search_outlined,
          ),
          iconSize: 25,
          color: GlobalData.secondarycolor,
          onPressed: () {
            Navigator.push(
              (context),
              MaterialPageRoute(
                builder: (context) => Search(),
              ),
            );
          },
        )
      ],
    );
  }

  ///****************************************Search*****************************************///
  static Widget search({
    String title,
  }) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey[200],
        //     blurRadius: 5,
        //     spreadRadius: 3,
        //     offset: Offset(3, 5),
        //   ),
        // ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            cursorColor: GlobalData.secondarycolor,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: GlobalData.secondarycolor,
              ),
              border: InputBorder.none,
              hintText: '$title',
              hintStyle: TextStyle(
                color: Colors.grey[350],
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///*************************************Categories****************************************/
  static Widget categories({
    CategoriesData categoriesdata,
  }) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: GlobalData.whitetexcolor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                color: GlobalData.primarycolor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                image: DecorationImage(
                  image: Svg(
                    '${categoriesdata?.image}',
                    color: GlobalData.whitetexcolor,
                  ),
                  scale: 2,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '${categoriesdata.name}',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
