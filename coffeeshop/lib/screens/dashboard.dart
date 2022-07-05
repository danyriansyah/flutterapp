import 'package:coffeeshop/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.transparent,
          ),
          Container(
            height: screenHeight,
            width: screenWidth / 5,
            color: colorPalette.leftBarColor,
          ),
          Positioned(
            left: screenWidth / 5,
            child: Container(
              height: screenHeight,
              width: screenWidth - (screenWidth / 5),
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 35.0,
            left: 20.0,
            child: Icon(
              Feather.menu,
            ),
          ),
          Positioned(
            top: 35.0,
            right: 20.0,
            child: Icon(
              Feather.shopping_bag,
            ),
          ),
          Positioned(
            top: screenHeight - (screenHeight - 100.0),
            left: (screenWidth / 5) + 25.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CoffeeHouse',
                  style: GoogleFonts.bigShouldersText(
                    color: Color(0xFF23163D),
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  'A lot can happen over coffee',
                  style: GoogleFonts.bigShouldersText(
                    color: Color(0xFFA59FB0),
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 40.0,
                  width: 225.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      contentPadding: EdgeInsets.only(top: 10.0, left: 10.0),
                      hintText: 'search....',
                      hintStyle: GoogleFonts.bigShouldersText(
                        color: Color(0xFFA59FBD),
                        fontSize: 15.0,
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}