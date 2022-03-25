import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/routes.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SOUTHERN HIRE", style: TextStyle(color: dark),), elevation: 0, backgroundColor: Colors.transparent,),
      body: Container(
        child: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                ),
              ),

              HomeCard(
                image:"https://www.honeypot.io/static/access.png",
                title: "Active & Relevant Talent Curated Every Week",
                subtitle: "A batch of active tech talents will appear"
                    " in your search list every Monday."
                    " This saves time because you can contact"
                    " the most relevant talents without wading"
                    " through potentially inactive profiles",
              ),
              HomeCard(
                image:"https://www.honeypot.io/static/hire.png",
                title: "Efficient Recruiting",
                subtitle: "Honeypot is the place to find tech"
                    " talent that companies will not find elsewhere."
                    " Fast response rates, curated talent,"
                    " and intuitive search functionality"
                    " make recruiting easy and efficient.",
              ),
              HomeCard(
                image:"https://www.honeypot.io/static/skills.png",
                title: "Verified Talent",
                subtitle: "Developers are pre-screened through"
                    " technical evaluations and "
                    " to ensure only qualified candidates"
                    " make it onto the platform. Candidate"
                    " profiles are kept clear and transparent,"
                    " so companies can easily find fitting"
                    " candidates who are open for job offers.",
              ),
              HomeCard(
                image:"https://www.honeypot.io/static/visa.png",
                title: "Visa Support: Hire Qualified International Talent",
                subtitle: "We offer visa and relocation support for local and international talent."
                    " International Hiring means you have access to a "
                    "larger group of qualified developers to build a great engineering team.",
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  HomeCard({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);
  String image;
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
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
                  NetworkImage(image),fit: BoxFit.contain,),
              )


          ),
        ),
        ListTile(
          title: Text(title, style: TextStyle(fontSize: 18),),
          subtitle: Text(subtitle),
        )
      ],
    ),);
  }
}

