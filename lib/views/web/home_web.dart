import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/routes.dart';
import 'package:hire_me/views/web/widgets/appBarWeb.dart';
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
          appBar: topNavigation(_height, _width),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 8),
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
                                                Navigator.pushNamed(context, Routes.talentOverviewWeb);
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
                      HomeCardWeb(
                        inverted: true,
                        image: "https://www.honeypot.io/static/visa.png",
                        title: "Visa Support: Hire Qualified International Talent",
                        subtitle: "We offer visa and relocation support for local and international talent."
                            " International Hiring means you have access to a "
                            "larger group of qualified developers to build a great engineering team.",
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 100,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                      ),
                      Expanded(
                        flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){

                              }, child: Text("For Talents", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)))
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){

                              }, child: Text("For Employers", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)))
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){}, child: Text("About Us", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))),
                              TextButton(onPressed: (){}, child: Text("Press", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Careers", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("FAQ", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Privacy Policy", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Legal Notice", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Cookie Declaration", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Terms of Service", style: TextStyle(color: Colors.grey))),

                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){}, child: Text("Community", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))),
                              TextButton(onPressed: (){}, child: Text("Blog", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Graph", style: TextStyle(color: Colors.grey))),
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){

                              }, child: Text("Our Socials", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))),
                              TextButton(onPressed: (){}, child: Text("Twitter", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Facebook", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("LinkedIn", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Github", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Instagram", style: TextStyle(color: Colors.grey))),
                              TextButton(onPressed: (){}, child: Text("Youtube", style: TextStyle(color: Colors.grey))),

                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ));
  }
}
