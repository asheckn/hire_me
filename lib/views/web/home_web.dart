import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/routes.dart';
import 'package:hire_me/views/web/widgets/home_card_web.dart';
import 'package:transparent_image/transparent_image.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Dedicated To \nAfrican Hiring", textAlign: TextAlign.left, style: TextStyle(fontSize: 38),),
                                Text("Southern Hire is the easiest way to hire Software Developers,"
                                    " DevOps Engineers and Engineering Leaders as well as"
                                    " Data Scientists, Data Engineers and Machine Learning Engineers in Africa", maxLines:6, style: TextStyle(fontSize: 18, height: 1.8), ),                              Row(
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
                            child: Container(
                                height: 450,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: FadeInImage(
                                    height: 400,
                                    placeholder: MemoryImage(kTransparentImage),
                                    image:
                                    NetworkImage("https://www.pngall.com/wp-content/uploads/5/Map-of-Africa-PNG-Images.png"),fit: BoxFit.contain,),
                                )


                            ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 100,),
                  HomeCardWeb(
                    image: "https://www.honeypot.io/static/access.png",
                    title: "Active & Relevant Talent Curated Every Week",
                    subtitle: "A batch of active tech talents will appear"
                        " in your search list every Monday."
                        " This saves time because you can contact"
                        " the most relevant talents without wading"
                        " through potentially inactive profiles",
                  ),
                  SizedBox(height: 70,),
                  HomeCardWeb(
                    inverted: true,
                    image: "https://www.honeypot.io/static/hire.png",
                    title: "Efficient Recruiting",
                    subtitle: "Honeypot is the place to find tech"
                        " talent that companies will not find elsewhere."
                        " Fast response rates, curated talent,"
                        " and intuitive search functionality"
                        " make recruiting easy and efficient.",
                  ),
                  SizedBox(height: 70,),
                  HomeCardWeb(
                    image: "https://www.honeypot.io/static/skills.png",
                    title: "Verified Talent",
                    subtitle: "Developers are pre-screened through"
                        " technical evaluations and "
                        " to ensure only qualified candidates"
                        " make it onto the platform. Candidate"
                        " profiles are kept clear and transparent,"
                        " so companies can easily find fitting"
                        " candidates who are open for job offers.",
                  ),
                  SizedBox(height: 70,),

                ],
              ),
            ),
          ),
        ));
  }
}
