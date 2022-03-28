import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/models/talent.dart';
import 'package:hire_me/views/mobile/widgets/talent_card.dart';

class TalentOverview extends StatefulWidget {
  const TalentOverview({Key? key}) : super(key: key);

  @override
  State<TalentOverview> createState() => _TalentOverviewState();
}

class _TalentOverviewState extends State<TalentOverview> {
  Talent _talent = Talent(
    firstName: "Nyasha",
    lastName: "Hove",
    mobileNumber: "0772342164",
    dob: DateTime(1998,02,01),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
                  child: Text("Today's \nTalent List", style: TextStyle(fontSize: 45),),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                return TalentCard(talent: _talent);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
