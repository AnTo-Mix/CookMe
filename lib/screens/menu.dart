import 'dart:ui';
import 'package:cooklme/utilities/constants.dart';
import 'package:cooklme/utilities/FoodType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  final imgPath, title;

  MenuPage({this.imgPath, this.title});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  FoodType foodName = FoodType();

  @override
  void initState() {
    String foodType = widget.title.toString().toUpperCase();
    foodName.updateDetails(foodType);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover))),
          BackdropFilter(
            filter: new ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: kBottomSelectedItemColor,
                    ),
                    child: Center(
                      child: Icon(Icons.filter_list, color: Colors.white),
                    ),
                  ),
                  Text(
                    widget.title.toString().toUpperCase(),
                    style: GoogleFonts.montserrat(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w400,
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: kBookMarkBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(Icons.bookmark_border, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 100.0,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 15.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'What\'s on the list ?',
                          style: GoogleFonts.montserrat(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10.0,
                        ),
                        child: Container(
                          height: 250.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(foodName.mainImage),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.6),
                                    BlendMode.darken),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 125.0,
                        left: 10.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 80.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    foodName.foodTitle,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        textStyle:
                                            TextStyle(color: Colors.white)),
                                  ),
                                  Text(foodName.foodTitleDesc,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14.0,
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ],
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: Colors.white),
                                child: Center(
                                    child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.orange,
                                )),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 15.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Menu Highlights',
                          style: GoogleFonts.montserrat(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BuildScrollItem(
                            imgPath: foodName.img1,
                            name: foodName.foodCat1,
                            price: foodName.price1),
                        BuildScrollItem(
                            imgPath: foodName.img2,
                            name: foodName.foodCat2,
                            price: foodName.price2),
                        BuildScrollItem(
                            imgPath: foodName.img3,
                            name: foodName.foodCat3,
                            price: foodName.price3),
                        BuildScrollItem(
                            imgPath: foodName.img4,
                            name: foodName.foodCat4,
                            price: foodName.price4),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BuildScrollItem extends StatelessWidget {
  final String imgPath, name, price;
  BuildScrollItem({this.imgPath, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: 175.0,
            width: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.darken),
                )),
          ),
          Positioned(
            top: 15.0,
            right: 15.0,
            child: Container(
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.5),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.orange,
                  size: 14.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 125.0,
            left: 15.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                      )),
                ),
                Text(price,
                    style: GoogleFonts.montserrat(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        textStyle: TextStyle(
                          color: Colors.white,
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
