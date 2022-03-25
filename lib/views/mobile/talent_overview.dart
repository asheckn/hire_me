import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';

class TalentOverview extends StatefulWidget {
  const TalentOverview({Key? key}) : super(key: key);

  @override
  State<TalentOverview> createState() => _TalentOverviewState();
}

class _TalentOverviewState extends State<TalentOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        centerTitle: true,
        title: Text("Candidates", style: TextStyle(color: dark),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: (){
          //  todo Navigate to create candidate page
          }, icon: Icon(Icons.add, color: dark,))
        ],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
