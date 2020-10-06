import 'file:///C:/Users/antho/AndroidStudioProjects/cooklme/lib/utilities/constants.dart';
import 'package:cooklme/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: kBottomSelectedItemColor),
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      // ),
                    ),
                  ),
                ),
              ),
              Text('Cookme',
                  style: GoogleFonts.pacifico(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle(color: Colors.white))),
              Container(
                height: 43.0,
                width: 43.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: kBookMarkBackgroundColor,
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Center(
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: MediaQuery.of(context).size.height - 162.0,
          child: ListView(
            children: [
              BuildListItem(
                imgPath: 'images/burger_3.jpg',
                title: 'BURGER',
                details: 'Flavors loaded',
              ),
              BuildListItem(
                imgPath: 'images/pizza_2.jpg',
                title: 'PIZZA',
                details: 'Crusty pizza.',
              ),
              BuildListItem(
                imgPath: 'images/salad_1.jpg',
                title: 'SALAD',
                details: 'Refreshing taste of sunshine!',
              ),
              BuildListItem(
                imgPath: 'images/dessert_1.jpg',
                title: 'DESSERT',
                details: 'A slice of heaven.',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BuildListItem extends StatelessWidget {
  final String imgPath;
  final String title;
  final String details;

  BuildListItem({this.imgPath, this.title, this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Container(
            height: 300.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
              ),
            ),
          ),
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    details,
                    style: GoogleFonts.montserrat(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 300),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            animation = CurvedAnimation(
                                parent: animation, curve: Curves.fastOutSlowIn);
                            return ScaleTransition(
                              alignment: Alignment.bottomLeft,
                              scale: animation,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return MenuPage(
                              imgPath: imgPath,
                              title: title,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text('Order now',
                            style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                textStyle: TextStyle(
                                  color: Colors.orange,
                                ))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
