
import 'package:hire_me/api/api_service.dart';
import 'package:hire_me/models/talent.dart';

ApiService apiService = new ApiService();


Future<List<Talent>> getUsers()async {
  var result = await apiService.getUsers() as List;
  List<User> users = result.map((i) => User.fromJson(i)).toList();
  return users;
}

Future<bool> updateUser(User user) async {
  bool result = await apiService.updateUser(user);
  return result;
}