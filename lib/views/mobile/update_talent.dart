import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/values.dart';
import 'package:hire_me/models/talent.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../services/services.dart';


class UpdateTalent extends StatefulWidget {
  UpdateTalent({Key? key, this.user}) : super(key: key);
  Talent? user;

  @override
  _UpdateTalentState createState() => _UpdateTalentState();
}

class _UpdateTalentState extends State<UpdateTalent> {
  Talent? user;
  bool isCreate = true;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController expectedSalaryController = TextEditingController();
  TextEditingController yearsOfExperienceController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController linkedInController = TextEditingController();
  DateTime? dob;

  @override
  void initState() {
    // TODO: implement initState
    if(widget.user != null) {
      isCreate = false;
      user = widget.user;
      firstNameController.text = user!.firstName!;
      lastNameController.text = user!.lastName!;
      mobileNumberController.text = user!.mobileNumber!;
      skillsController.text = user!.skills!;
      emailController.text = (user!.email == null)? "":user!.email!;
      expectedSalaryController.text = user!.expectedSalary!;
      yearsOfExperienceController.text = user!.yearsOfExperience!.toString();
      countryController.text = user!.country!;
      cityController.text = user!.city!;
      zipCodeController.text = user!.zipCode!;
      jobTitleController.text = user!.jobTitle!;
      dateController.text = user!.dob!;
      twitterController.text = (user!.twitter == null)? "":user!.twitter!;
      linkedInController.text = (user!.linkedIn == null)? "":user!.linkedIn!;
      dob = DateTime.parse(user!.dob!);
      status = user!.status!;
    }
    super.initState();

  }
  final _formKey = GlobalKey<FormState>();

  List<String> statuses = [
    "PENDING",
    "APPROVED",
    "DENIED"
  ];

  String? status;
  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: SafeArea(
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
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                          controller: mobileNumberController,
                          decoration: InputDecoration(
                            labelText: "MobileNumber",

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
                          controller: jobTitleController,
                          decoration: InputDecoration(
                            labelText: "JobTitle",

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: TextFormField(
                          maxLines: 2,
                          maxLength: 100,
                          validator: (value){
                            if(value == null || value == ""){
                              return "Required";
                            }else{
                              return null;
                            }
                          },
                          controller: skillsController,
                          decoration: InputDecoration(
                            labelText: "Skills",

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
                          controller: countryController,
                          decoration: InputDecoration(
                            labelText: "Country",

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
                          controller: cityController,
                          decoration: InputDecoration(
                            labelText: "City",

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value){
                            if(value == null || value == ""){
                              return "Required";
                            }else{
                              return null;
                            }
                          },
                          controller: zipCodeController,
                          decoration: InputDecoration(
                            labelText: "ZipCode",

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
                              return null;
                            }else{
                              return null;
                            }
                          },
                          controller: twitterController,
                          decoration: InputDecoration(
                            labelText: "Twitter",

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
                              return null;
                            }else{
                              return null;
                            }
                          },
                          controller: linkedInController,
                          decoration: InputDecoration(
                            labelText: "LinkedIn",

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
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value){
                            if(value == null || value == ""){
                              return "Required";
                            }else{
                              return null;
                            }
                          },
                          controller: expectedSalaryController,
                          decoration: InputDecoration(
                            labelText: "Expected Salary",

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value){
                            if(value == null || value == ""){
                              return "Required";
                            }else{
                              return null;
                            }
                          },
                          controller: yearsOfExperienceController,
                          decoration: const InputDecoration(
                            labelText: "Years of Experience",

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
                                dob = newDate;
                              });
                            }

                          },
                          title: Text((dob == null)?"--/--/----":DateFormat(DateFormat.YEAR_MONTH_DAY,).format(dob!)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField(
                        icon: Icon(Icons.keyboard_arrow_down_outlined, color: dark, size: 28,),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 8),
                            border: OutlineInputBorder(
                                borderRadius: inputRadius,
                                borderSide: BorderSide(color: Colors.blue)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: inputRadius,
                                borderSide: BorderSide(color: Colors.blue)
                            )

                        ),
                        isExpanded: true,
                        value: status,
                        items: statuses.map((String item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(item));
                        }).toList(),
                        onChanged: (String? newCard){
                          setState(() {
                            status = newCard!;
                          });
                        },
                      ),
                    ),

                    //BUTTON
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
                              context.loaderOverlay.show();
                              if(user == null){
                                user = Talent();
                              }
                              user!.mobileNumber = mobileNumberController.text;
                              user!.firstName = firstNameController.text;
                              user!.lastName = lastNameController.text;
                              user!.jobTitle = jobTitleController.text;
                              user!.skills = skillsController.text;
                              user!.country = countryController.text;
                              user!.city = cityController.text;
                              user!.zipCode = zipCodeController.text;
                              user!.dob = dob!.toIso8601String();
                              user!.status = status;
                              user!.expectedSalary = expectedSalaryController.text;
                              user!.yearsOfExperience = int.parse(yearsOfExperienceController.text);
                              user!.twitter = twitterController.text;
                              user!.linkedIn = linkedInController.text;

                              if(isCreate){
                                print("Creating Talent");
                                bool result =  await createUser(user!);
                                context.loaderOverlay.hide();
                                if(result){
                                  Navigator.pop(context, true);
                                }
                              }else{
                                print("Updating Talent");
                                bool result =  await updateUser(user!);
                                context.loaderOverlay.hide();
                                if(result){
                                  Navigator.pop(context, true);
                                }
                              }

                            }

                          }, child: Text((user == null)?"CREATE":"UPDATE", style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(
                      height: 30,
                    )


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
