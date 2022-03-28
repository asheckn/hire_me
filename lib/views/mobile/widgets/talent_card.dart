import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/models/talent.dart';
import 'package:hire_me/views/mobile/update_talent.dart';
import 'package:hire_me/views/web/update_talent_web.dart';
import 'package:transparent_image/transparent_image.dart';



class TalentCard extends StatelessWidget {
   TalentCard({Key? key, required this.talent}) : super(key: key);
  Talent talent;
  String image = "https://picsum.photos/200";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: dark.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(image)),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(talent.skills!, maxLines: 5, style: TextStyle(fontSize: 16), ),
                          ),
                          SizedBox(height: 5,),
                          Text(" ${talent.city}, ${talent.country} \n\$${talent.expectedSalary}", textAlign: TextAlign.start, style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // ListTile(
                    //   title: Text(talent.description!, style: TextStyle(fontSize: 18), maxLines: 5,),
                    //   subtitle: Text(" ${talent.address!.city}, ${talent.address!.country} \n${talent.expectedSalary} "),
                    // )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: (){
                        if(defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateTalent(user: talent)));
                        }else {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateTalentWeb(talent: talent)));
                        }

                      },
                      child: Text("View Profile"),
                    ),

                    Row(
                      children: [
                      // Icon(Icons.done),
                      Text("Status: ${talent.status}")
                    ],)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
