import 'package:dio/dio.dart';
import 'package:tinder_clone/common/consts.dart';
import 'package:tinder_clone/models/models.dart';

class UserService {
  static Future<List<User>?> fetchUsers() async {
    //TODO: improve paging
    const endPoint = 'user?page=0&limit=11';
    final Dio dio = Dio();
    final headers = {'app-id': appId};
    try {
      final response = await dio.get('$baseUrl$endPoint',
          options: Options(headers: headers));
      final List<User> userList = [];
      if (response.statusCode == 200) {
        final userJson = response.data['data'] as List<dynamic>;
        for (dynamic user in userJson) {
          final fetchedUser = await _fetchUser(user['id']);
          if (fetchedUser != null) {
            userList.add(fetchedUser);
          }
        }
        return userList;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }

  static Future<User?> _fetchUser(String userId) async {
    final endPoint = 'user/$userId';
    final Dio dio = Dio();
    final headers = {'app-id': appId};
    try {
      final response = await dio.get('$baseUrl$endPoint',
          options: Options(headers: headers));
      if (response.statusCode == 200) {
        return User.fromJson(response.data as Map<String, dynamic>);
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
