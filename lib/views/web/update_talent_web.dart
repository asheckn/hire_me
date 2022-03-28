import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/values.dart';
import 'package:hire_me/models/talent.dart';
import 'package:hire_me/views/web/widgets/appBarWeb.dart';


class UpdateTalentWeb extends StatefulWidget {
   UpdateTalentWeb({Key? key, this.talent}) : super(key: key);
  Talent? talent;

  @override
  State<UpdateTalentWeb> createState() => _UpdateTalentWebState();
}

class _UpdateTalentWebState extends State<UpdateTalentWeb> {
  double _width = 110;
  double _height = 35;
  TextEditingController accountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: topNavigation(_height, _width),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
        child: Column(
          children: [
            Text("New Talent", style: TextStyle(fontSize: 18, color: dark),),
            Container(
              width: MediaQuery.of(context).size.width,
              child:  TextFormField(
                controller: accountController,
                validator: (value){
                  if(value==null || value==""){
                    return "Required!";
                  }else{
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                style:  TextStyle(color: dark),
                decoration: InputDecoration(
                  labelText: "First Name",
                  isDense: true,
                  hintText: "John",
                  iconColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue),
                    borderRadius: inputRadius,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.lightBlue),
                    borderRadius: inputRadius,
                  ),
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
