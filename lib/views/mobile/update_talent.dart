import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/models/talent.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../services/services.dart';


class UpdateTalent extends StatefulWidget {
  UpdateTalent({Key? key, @required required this.user}) : super(key: key);
  Talent user;

  @override
  _UpdateTalentState createState() => _UpdateTalentState();
}

class _UpdateTalentState extends State<UpdateTalent> {
  Talent? user;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController expectedSalaryController = TextEditingController();
  TextEditingController yearsOfExperienceController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = widget.user;
    firstNameController.text = widget.user.firstName!;
    lastNameController.text = widget.user.lastName!;

  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          centerTitle: true,
          title: Text("Update Talent", style: TextStyle(color: dark),),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(onPressed: (){
              //  todo Navigate to create candidate page
            }, icon: Icon(Icons.add, color: dark,))
          ],
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value == ""){
                        return "Required";
                      }else{
                        return null;
                      }
                    },
                    controller: firstNameController,
                    decoration: InputDecoration(
                      labelText: "First Name",

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value == ""){
                        return "Required";
                      }else{
                        return null;
                      }
                    },
                    controller: lastNameController,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  child: TextFormField(
                    validator: (value){
                      if(value == null || value == ""){
                        return "Required";
                      }else{
                        return null;
                      }
                    },
                    controller: locationController,
                    decoration: InputDecoration(
                      labelText: "Location",

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text("DOB"),
                  )),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(

                  child: ListTile(
                    trailing: Icon(Icons.edit),
                    onTap: () async {
                      final DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate:  DateTime(1900,1,1),
                        lastDate: DateTime(2025, 7),
                        helpText: 'Date of Birth',
                      );
                      if(newDate != null){
                        setState(() {

                        });
                      }

                    },
                    title: Text(DateFormat(DateFormat.YEAR_MONTH_DAY,).format(DateTime.now())),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: saBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                    onPressed:  () async {
                      if(_formKey.currentState!.validate()){
                        // context.loaderOverlay.show();
                        // user!.location = locationController.text;
                        // user!.firstName = firstNameController.text;
                        // user!.lastName = lastNameController.text;
                        //
                        // bool result =  await updateUser(user!);
                        // context.loaderOverlay.hide();
                        // if(result){
                        //   Navigator.pop(context, true);
                        // }
                      }

                    }, child: Text("UPDATE", style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(
                height: 30,
              )


            ],
          ),
        ),
      ),
    );
  }
}
