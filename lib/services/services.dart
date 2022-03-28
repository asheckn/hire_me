
import 'package:hire_me/api/api_service.dart';
import 'package:hire_me/models/talent.dart';

ApiService apiService = new ApiService();


Future<List<Talent>> getUsers()async {
  var result = await apiService.getTalent() as List;
  List<Talent> users = result.map((i) => Talent.fromJson(i)).toList();
  print(users);
  print("returning users");
  return users;
}

Future<bool> updateUser(Talent talent) async {
  bool result = await apiService.updateTalent(talent);
  return result;
}