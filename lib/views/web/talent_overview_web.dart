import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/models/talent.dart';
import 'package:hire_me/services/services.dart';
import 'package:hire_me/views/mobile/widgets/talent_card.dart';
import 'package:hire_me/views/web/update_talent_web.dart';
import 'package:hire_me/views/web/widgets/appBarWeb.dart';

class TalentOverviewWeb extends StatefulWidget {
  const TalentOverviewWeb({Key? key}) : super(key: key);

  @override
  State<TalentOverviewWeb> createState() => _TalentOverviewWebState();
}

class _TalentOverviewWebState extends State<TalentOverviewWeb> {
  double _width = 110;
  double _height = 35;
  double _talentCardWidth = 350;
  Talent _talent = Talent(
    firstName: "Nyasha",
    lastName: "Hove",
    mobileNumber: "0772342164",
    dob: DateTime(1998,02,01).toIso8601String(),
    skills: "Flutter Mobile Dev| Python | Machine Learning | Game Developer and 3D Artist",
    country: "Zimbabwe",
    city: "Harare",
    zipCode: "00263",
    expectedSalary: 30000.toString(),
    email: "hove@mail.com",
    yearsOfExperience: 5,
    status: "Pending",

  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: topNavigation(_height, _width),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 140,),
                          Text("All Talent for Today", style: TextStyle(color: dark, fontSize: 22),),
                          SizedBox(width: 30,),
                          Container(
                              height: 35,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: TextButton(onPressed: (){}, child: Text("+ Add Talent", style: TextStyle(color: dark),))),
                        ],
                      ),
                      SizedBox(height: 20,),
                      FutureBuilder(
                        future: getUsers(),
                        builder: (context, AsyncSnapshot snapshot) {
                          if(snapshot.data != null){
                            List<Talent> talents = snapshot.data;
                            return Wrap(
                              children: talents.map((user) {
                              return Column(
                                children: [
                                  Container(
                                      width: _talentCardWidth,
                                      child: TalentCard(talent: user, onPressed: () async{
                                        var result = await Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateTalentWeb(user: user)));
                                        setState(() {

                                        });
                                      },)),
                                  SizedBox(width: 10,),
                                ],
                              );

                              }).toList(),
                            );
                          }else {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                LinearProgressIndicator(),
                              ],
                            );
                          }

                        }
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
