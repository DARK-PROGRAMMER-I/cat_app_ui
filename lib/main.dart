import 'package:cats_profile/screens/profile_screen/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(Cats());


class Cats extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

