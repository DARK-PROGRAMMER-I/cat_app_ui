import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/cover.jpg"),

          Transform.translate(
            offset: Offset(0, 150),
            child: Column(
            children: [
              _buildProfileImage(context),
              _buildProfileDetails(context),
              _buildActions(context),
            ],
        ),
          ),]
      ),
    );
  }

  // Now here we will create all our custom Functions

  // Profile Image
  Widget _buildProfileImage(BuildContext context){
    return Center(
      child: Container(

        width: 150,
        height: 150,
        child: ClipOval(
          child: Image.asset("assets/real-profile.jpg", fit: BoxFit.fitWidth,),
        ),
      ),
    );
  }
  // Profile Details
  Widget _buildProfileDetails(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Kitty Cat", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 40),),
          SizedBox(height: 20,),
          _buildRowDetails('Age', '3'),
          _buildRowDetails('Gender', 'female'),
        ],
      ),
    );
  }
  Widget _buildRowDetails(String heading, String details){
    return Row(
      children: [
        Text("$heading:", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 18),),
        SizedBox(width: 20,),
        Text("$details", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 16),),
      ],
    );
  }

  // Now we will move towards Actions Widget Function, initiallized in the main Widget
  Widget _buildActions(BuildContext context){
    return Center(
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIcon(Icons.directions_walk, 'Walk'),
          _buildIcon(Icons.restaurant, 'Restaurant'),
          _buildIcon(Icons.pets, 'Pet'),

        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, String text){
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Icon(icon, size: 40,),
          SizedBox(height: 5,),
          Text(text, style: TextStyle(color: Colors.black87, fontSize: 16, ),)

        ],
      ),

    );
  }
}
