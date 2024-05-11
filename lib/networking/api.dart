import 'package:dio/dio.dart';
import 'package:ui/networking/user.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://reqres.in/api';

  Future<User?> getUser({required String id}) async {
    try {
      Response userData = await _dio.get('$_baseUrl/users/$id');
      var user = User.fromJson(userData.data["data"]);
      return user;
    } catch (e) {
      throw Exception("Erreur lors de la récupération des données");
    }
  }

  //get all users
  Future<List<User>> getUsers() async {
    try {
      Response response = await _dio.get('$_baseUrl/users');
      var users = (response.data["data"] as List)
          .map((user) => User.fromJson(user))
          .toList();
      return users;
    } catch (e) {
      throw Exception("Erreur lors de la récupération des données");
    }
  }

  //create user
  Future<User> createUser() async {
    try {
      var userto = User(
          id: 25,
          email: "janet.weaver@reqres.in",
          firstName: "Saliou",
          lastName: "Thiam",
          avatar: "https://reqres.in/img/faces/2-image.jpg");
      var payload = userto.toJson();
      Response response = await _dio.post('$_baseUrl/users', data: payload);
      var user = User.fromJson(response.data);
      return user;
    } catch (e) {
      throw Exception("Erreur lors de la création de l'utilisateur");
    }
  }
}
