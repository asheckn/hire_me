
import 'dart:convert';

class Talent {
  Talent({
    this.mobileNumber,
    this.firstName,
    this.lastName,
    this.dob,
    this.description,
    this.address,
    this.twitter,
    this.linkedIn,
    this.email,
    this.expectedSalary,
    this.yearsOfExperience,
    this.status,
    this.dateCreated,
    this.dateModified,
    this.id,
  });

  String? mobileNumber;
  String? firstName;
  String? lastName;
  DateTime? dob;
  String? description;
  Address? address;
  String? twitter;
  String? linkedIn;
  String? email;
  int? expectedSalary;
  double? yearsOfExperience;
  String? status;
  DateTime? dateCreated;
  DateTime? dateModified;
  int? id;

  factory Talent.fromRawJson(String str) => Talent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Talent.fromJson(Map<String, dynamic> json) => Talent(
    mobileNumber: json["mobileNumber"] == null ? null : json["mobileNumber"],
    firstName: json["firstName"] == null ? null : json["firstName"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    description: json["description"] == null ? null : json["description"],
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
    twitter: json["twitter"] == null ? null : json["twitter"],
    linkedIn: json["linkedIn"] == null ? null : json["linkedIn"],
    email: json["email"] == null ? null : json["email"],
    expectedSalary: json["expectedSalary"] == null ? null : json["expectedSalary"],
    yearsOfExperience: json["yearsOfExperience"] == null ? null : json["yearsOfExperience"],
    status: json["status"] == null ? null : json["status"],
    dateCreated: json["dateCreated"] == null ? null : DateTime.parse(json["dateCreated"]),
    dateModified: json["dateModified"] == null ? null : DateTime.parse(json["dateModified"]),
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "mobileNumber": mobileNumber == null ? null : mobileNumber,
    "firstName": firstName == null ? null : firstName,
    "lastName": lastName == null ? null : lastName,
    "dob": dob == null ? null : dob!.toIso8601String(),
    "description": description == null ? null : description,
    "address": address == null ? null : address!.toJson(),
    "twitter": twitter == null ? null : twitter,
    "linkedIn": linkedIn == null ? null : linkedIn,
    "email": email == null ? null : email,
    "expectedSalary": expectedSalary == null ? null : expectedSalary,
    "yearsOfExperience": yearsOfExperience == null ? null : yearsOfExperience,
    "status": status == null ? null : status,
    "dateCreated": dateCreated == null ? null : dateCreated!.toIso8601String(),
    "dateModified": dateModified == null ? null : dateModified!.toIso8601String(),
    "id": id == null ? null : id,
  };
}

class Address {
  Address({
    this.country,
    this.city,
    this.zipcode,
  });

  String? country;
  String? city;
  String? zipcode;

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    country: json["country"] == null ? null : json["country"],
    city: json["city"] == null ? null : json["city"],
    zipcode: json["zipcode"] == null ? null : json["zipcode"],
  );

  Map<String, dynamic> toJson() => {
    "country": country == null ? null : country,
    "city": city == null ? null : city,
    "zipcode": zipcode == null ? null : zipcode,
  };
}
