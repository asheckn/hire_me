import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hire_me/models/talent.dart';
import 'package:http/http.dart' as http;
import '../constants/urls.dart';

class ApiService{

  Future<dynamic> getTalent() async {
    String url = "$baseUrl//candidates/";
    print("getting talent");
    final response = await http.get(Uri.parse(url));
    // print(response.body);
    log(response.body);

    if (response.statusCode == 200 || response.statusCode == 400) {
      print("Response Success");
      return json.decode(response.body);
    } else {
      // debugPrint(response.body.toString());
      debugPrint("Failed with code: ${response.statusCode}");
      return [];
    }
  }

  Future<dynamic> updateTalent(Talent talent) async {

    var endpointUrl = "$baseUrl/updateUser";


    var requestUrl = endpointUrl;
    final response = await http.put(Uri.parse(requestUrl),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "Access-Control-Allow-Headers": "*",
        },
        body: talent.toRawJson(),
        );
    if (response.statusCode == 200 || response.statusCode == 201) {
      print("updating user");
      return true;
    } else {
      debugPrint(response.body.toString());
      return false;
    }
  }

}