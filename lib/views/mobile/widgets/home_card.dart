import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
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