import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListInstructorPage extends StatefulWidget {
  const ListInstructorPage({Key? key}) : super(key: key);

  @override
  State<ListInstructorPage> createState() => _ListInstructorPageState();
}

class _ListInstructorPageState extends State<ListInstructorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF6ED),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.menu),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Text(
                  'Santa Monica, CA',
                  style: GoogleFonts.tinos(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.keyboard_arrow_down),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
