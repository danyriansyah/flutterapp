import 'package:flutter/material.dart';

class ColdBrew extends StatefulWidget {
  const ColdBrew({Key? key}) : super(key: key);

  @override
  State<ColdBrew> createState() => _ColdBrewState();
}

class _ColdBrewState extends State<ColdBrew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Cold Brew'),
    );
  }
}
