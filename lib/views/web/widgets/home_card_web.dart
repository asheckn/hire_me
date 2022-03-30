import 'package:flutter/material.dart';
import 'package:hire_me/constants/routes.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeCardWeb extends StatefulWidget {
   HomeCardWeb({Key? key, this.inverted = false, required this.title, required this.subtitle, required this.image}) : super(key: key);
   String image;
   String title;
   String subtitle;
   bool inverted;
  @override
  State<HomeCardWeb> createState() => _HomeCardWebState();
}

class _HomeCardWebState extends State<HomeCardWeb> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: (widget.inverted)?Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  height: 212,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(image: AssetImage(widget.image,),fit: BoxFit.contain,),
                    // child: FadeInImage(
                    //   placeholder: MemoryImage(kTransparentImage),
                    //   image: NetworkImage(widget.image),fit: BoxFit.contain,),
                  )


              ),),
          Expanded(
              flex: 1,
              child: ListTile(
                title: Text(widget.title, style: TextStyle(fontSize: 20, height: 1.5),),
                subtitle: Text(widget.subtitle, style: TextStyle(height: 1.5),),
              ),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     const Text("Dedicated To \nAfrican Hiring", textAlign: TextAlign.left, style: TextStyle(fontSize: 38),),
              //     Text("Southern Hire is the easiest way to hire Software Developers,"
              //         " DevOps Engineers and Engineering Leaders as well as"
              //         " Data Scientists, Data Engineers and Machine Learning Engineers in Africa", maxLines:6, style: TextStyle(fontSize: 18, height: 1.8), ),                              Row(
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 8),
              //           child: Container(
              //             height: 50,
              //             width: 100,
              //
              //             decoration: BoxDecoration(
              //                 color: Colors.lightBlue.withOpacity(0.1),
              //                 borderRadius: BorderRadius.circular(8)
              //             ),
              //             child:
              //             TextButton(
              //               onPressed: (){
              //                 Navigator.pushNamed(context, Routes.talentOverview);
              //               },
              //               child: Text("View Talent"),),),
              //         ),
              //
              //       ],)
              //   ],
              // )

          ),
        ],
      ):
      Row(
        children: [
          Expanded(
            flex: 1,
            child: ListTile(
              title: Text(widget.title, style: TextStyle(fontSize: 20, height: 1.5),),
              subtitle: Text(widget.subtitle, style: TextStyle(height: 1.5),),
            ),
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     const Text("Dedicated To \nAfrican Hiring", textAlign: TextAlign.left, style: TextStyle(fontSize: 38),),
            //     Text("Southern Hire is the easiest way to hire Software Developers,"
            //         " DevOps Engineers and Engineering Leaders as well as"
            //         " Data Scientists, Data Engineers and Machine Learning Engineers in Africa", maxLines:6, style: TextStyle(fontSize: 18, height: 1.8), ),                              Row(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 8),
            //           child: Container(
            //             height: 50,
            //             width: 100,
            //
            //             decoration: BoxDecoration(
            //                 color: Colors.lightBlue.withOpacity(0.1),
            //                 borderRadius: BorderRadius.circular(8)
            //             ),
            //             child:
            //             TextButton(
            //               onPressed: (){
            //                 Navigator.pushNamed(context, Routes.talentOverview);
            //               },
            //               child: Text("View Talent"),),),
            //         ),
            //
            //       ],)
            //   ],
            // )

          ),
          Expanded(
            flex: 1,
            child: Container(
                height: 212,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image:
                    NetworkImage(widget.image),fit: BoxFit.contain,),
                )


            ),),
        ],
      ),
    );
  }
}
