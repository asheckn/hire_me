import 'package:flutter/material.dart';
import 'package:hire_me/constants/palette.dart';
import 'package:hire_me/constants/values.dart';
import 'package:hire_me/models/talent.dart';
import 'package:hire_me/services/services.dart';
import 'package:hire_me/views/web/widgets/appBarWeb.dart';
import 'package:intl/intl.dart';
import 'package:loader_overlay/loader_overlay.dart';


class UpdateTalentWeb extends StatefulWidget {
   UpdateTalentWeb({Key? key, this.user}) : super(key: key);
  Talent? user;

  @override
  State<UpdateTalentWeb> createState() => _UpdateTalentWebState();
}

class _UpdateTalentWebState extends State<UpdateTalentWeb> {

  double _width = 110;
  double _height = 35;
  Talent? user;
  DateTime? dob;
  String? status;
  TextEditingController accountController = TextEditingController();
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
  EdgeInsets inputPadding = EdgeInsets.symmetric(vertical: 8, horizontal: 8);

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
      dob = DateTime.tryParse(user!.dob!);
      status = user!.status!;
    }
    super.initState();
  }
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: topNavigation(_height, _width),
      body: LoaderOverlay(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 8),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Divider(),
                Text("New Talent", style: TextStyle(fontSize: 18, color: dark),),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   child:  TextFormField(
                //     controller: accountController,
                //     validator: (value){
                //       if(value==null || value==""){
                //         return "Required!";
                //       }else{
                //         return null;
                //       }
                //     },
                //     keyboardType: TextInputType.number,
                //     style:  TextStyle(color: dark),
                //     decoration: InputDecoration(
                //       labelText: "First Name",
                //       isDense: true,
                //       hintText: "John",
                //       iconColor: Colors.white,
                //       border: OutlineInputBorder(
                //         borderSide: BorderSide(color: Colors.lightBlue),
                //         borderRadius: inputRadius,
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderSide:  BorderSide(color: Colors.lightBlue),
                //         borderRadius: inputRadius,
                //       ),
                //       hintStyle: const TextStyle(color: Colors.grey),
                //     ),
                //   ),
                // ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                          child: Container(
                            child: Text("General", style: TextStyle(color: dark, fontSize: 22),),
                          )),
                      Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: inputPadding,
                                child:  TextFormField(
                                  controller: firstNameController,
                                  validator: (value){
                                    if(value==null || value==""){
                                      return "Required!";
                                    }else{
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.text,
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
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: inputPadding,
                                child:  TextFormField(
                                  controller: lastNameController,
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
                                    labelText: "Last Name",
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
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: inputPadding,
                                child:  TextFormField(
                                  controller: mobileNumberController,
                                  validator: (value){
                                    if(value==null || value==""){
                                      return "Required!";
                                    }else{
                                      return null;
                                    }
                                  },
                                  style:  TextStyle(color: dark),
                                  decoration: InputDecoration(
                                    labelText: "Mobile Number",
                                    isDense: true,
                                    hintText: "+263XXXXXXX",
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
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12),
                                    child: Text("Date of Birth"),
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
                            ],
                          ),)
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text("Address", style: TextStyle(color: dark, fontSize: 22),),
                          )),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: countryController,
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
                                  labelText: "Country",
                                  isDense: true,
                                  hintText: "Zimbabwe",
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: cityController,
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
                                  labelText: "City",
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: zipCodeController,
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
                                  labelText: "Zip Code",
                                  isDense: true,
                                  hintText: "00263",
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
                        ),)
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text("Experience", style: TextStyle(color: dark, fontSize: 22),),
                          )),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: jobTitleController,
                                validator: (value){
                                  if(value==null || value==""){
                                    return "Required!";
                                  }else{
                                    return null;
                                  }
                                },
                                style:  TextStyle(color: dark),
                                decoration: InputDecoration(
                                  labelText: "Job Title",
                                  isDense: true,
                                  hintText: "Zimbabwe",
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: skillsController,
                                maxLength: 100,
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
                                  labelText: "Skills",
                                  isDense: true,
                                  hintText: "Java",
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: expectedSalaryController,
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
                                  labelText: "Expected Salary",
                                  isDense: true,
                                  hintText: "2000",
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: yearsOfExperienceController,
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
                                  labelText: "Years of Experience",
                                  isDense: true,
                                  hintText: "5",
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
                            Container(
                              padding: EdgeInsets.all(12),
                              width: MediaQuery.of(context).size.width,
                              child: DropdownButtonFormField(
                                isDense: true,
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
                          ],
                        ),)
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Text("Socials", style: TextStyle(color: dark, fontSize: 22),),
                          )),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: emailController,
                                validator: (value){
                                  if(value==null || value==""){
                                    return null;
                                  }else{
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.number,
                                style:  TextStyle(color: dark),
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  isDense: true,
                                  hintText: "user@email.com",
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: twitterController,
                                validator: (value){
                                  if(value==null || value==""){
                                    return null;
                                  }else{
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.number,
                                style:  TextStyle(color: dark),
                                decoration: InputDecoration(
                                  labelText: "Twitter",
                                  isDense: true,
                                  hintText: "@user",
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
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: inputPadding,
                              child:  TextFormField(
                                controller: linkedInController,
                                validator: (value){
                                  if(value==null || value==""){
                                    return null;
                                  }else{
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.number,
                                style:  TextStyle(color: dark),
                                decoration: InputDecoration(
                                  labelText: "LinkedIn",
                                  isDense: true,
                                  hintText: "@user",
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
                        ),)
                    ],
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                      width: 140,
                      height: 40,
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
                  ],
                ),
                //BUTTON
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
