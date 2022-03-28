import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/routes.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  double _width = 110;
  double _height = 35;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
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
                    child: TextButton(onPressed: (){}, child: Text("For Employers", style: TextStyle(color: Colors.grey),))),
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
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 8),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              const Text("Dedicated To \nAfrican Hiring", textAlign: TextAlign.left, style: TextStyle(fontSize: 38),),
                              Text("Southern Hire is the easiest way to hire Software Developers,"
                                  " DevOps Engineers and Engineering Leaders as well as"
                                  " Data Scientists, Data Engineers and Machine Learning Engineers in Africa", maxLines:6, style: TextStyle(fontSize: 18),),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Container(
                                      height: 50,
                                      width: 100,

                                      decoration: BoxDecoration(
                                          color: Colors.lightBlue.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      child:
                                      TextButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, Routes.talentOverview);
                                        },
                                        child: Text("View Talent"),),),
                                  ),

                                ],)
                            ],
                          )),
                      Expanded(
                          flex: 3,
                          child: Container())
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
