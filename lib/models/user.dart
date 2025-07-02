import 'package:flutter/material.dart';

class User {
  int? id;
  String email;
  String password;

  User({this.id, required this.email, required this.password});

  Map<String, dynamic> toMap(User user){
    return({'id': user.id, 'email': user.email, 'password': user.password});
  }

  List<User> fromMap(Map<String, dynamic> map){
    List<User> result = [];
    for (var e in map.entries) {
      result.add(User(id: e.value['id'] , email: e.value['email'], password: e.value['password']));
    }
    return result;  
  }
}
