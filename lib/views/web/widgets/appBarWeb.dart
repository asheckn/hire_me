
import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/routes.dart';

AppBar topNavigation(double height, double width, BuildContext context){
  double _height = height;
  double _width = width;
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("SOUTHERN HIRE", style: TextStyle(color: dark),),
        SizedBox(width: 130,),
        Container(
            height: _height,
            width: _width,
            child: TextButton(onPressed: (){}, child: Text("For Talents", style: TextStyle(color: Colors.grey),))),
        SizedBox(

          width: 30,),
        Container(
            height: _height,
            width: _width,
            child: TextButton(onPressed: (){
              Navigator.pushNamed(context, Routes.homeWeb);
            }, child: Text("For Employers", style: TextStyle(color: Colors.grey),))),
        SizedBox(

          width: 30,),
        Container(
            height: _height,
            width: _width,
            child: TextButton(onPressed: (){}, child: Text("About Us", style: TextStyle(color: Colors.grey),))),
        SizedBox(

          width: 30,),
        Container(
            height: _height,
            width: _width,
            child: TextButton(onPressed: (){}, child: Text("Login", style: TextStyle(color: Colors.grey),))),
        SizedBox(

          width: 30,),
        Container(
            height: _height,
            width: _width,

            decoration: BoxDecoration(
                color: Colors.lightBlue.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8)
            ),
            child: TextButton(onPressed: (){}, child: Text("Sign Up", style: TextStyle(color: dark),))),
        SizedBox(width: 50,)

      ],
    ),
  );
}