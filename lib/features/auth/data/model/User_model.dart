import 'package:movie_app/features/home/domain/entity/movie_entity.dart';

class UserModel {
  final String email;
  final String password;
  final String name;
  final String? phone;
  final List<MovieEntity> watchList;
  final List<MovieEntity> history;
  final int id;
  final int avatarId;

  UserModel({
    required this.email,
    required this.password,
    required this.name,
    this.phone,
    required this.watchList,
    required this.history,
    required this.id,
    required this.avatarId,
  });
}
