import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/models/talent.dart';
import 'package:hire_me/views/mobile/update_talent.dart';
import 'package:hire_me/views/web/update_talent_web.dart';
import 'package:transparent_image/transparent_image.dart';



class TalentCard extends StatefulWidget {
   TalentCard({Key? key, required this.talent, required this.onPressed}) : super(key: key);
  Talent talent;
  Function onPressed;

  @override
  State<TalentCard> createState() => _TalentCardState();
}

class _TalentCardState extends State<TalentCard> {
  String image = "https://picsum.photos/200";

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        height: cardHeight(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
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
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Column(
            children: [
              Container(
                // height: 150,
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
                            child: Text(
                              "${widget.talent.firstName!} ${widget.talent.lastName!}", maxLines: 2, style: TextStyle(fontSize: 16), ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.talent.skills!.replaceAll("\n"," "), maxLines: 5, style: TextStyle(fontSize: 14),),
                          ),
                          SizedBox(height: 5,),
                          Text(" ${widget.talent.city}, ${widget.talent.country} \n\$${widget.talent.expectedSalary}", textAlign: TextAlign.start, style: TextStyle(color: Colors.grey),),
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
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: ()=>widget.onPressed(),
                      child: Text("View Profile"),
                    ),

                    Row(
                      children: [
                      // Icon(Icons.done),
                      Text("Status: ${widget.talent.status}")
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

  double cardHeight(){
    if (defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS){
      return 210;
    }
    else {
      return 180;
    }
  }
}
