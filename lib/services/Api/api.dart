import 'package:architecture_training/services/datamodels/api_models.dart';

abstract class Api {

  Future<LogInResponse> logIn({String userName, String password});

  Future<User> getUser({int userId});

  Future<List<Post>> getPostForUser({int userId});

  Future<List<Comments>> getCommentsForPost({int userId});

}