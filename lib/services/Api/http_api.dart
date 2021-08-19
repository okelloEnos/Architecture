import 'package:architecture_training/services/Api/api.dart';
import 'package:architecture_training/services/datamodels/api_models.dart';

class HttpApi implements Api{
  @override
  Future<List<Comments>> getCommentsForPost({int userId}) {
    // TODO: implement getCommentsForPost
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPostForUser({int userId}) {
    // TODO: implement getPostForUser
    throw UnimplementedError();
  }

  @override
  Future<User> getUser({int userId}) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<LogInResponse> logIn({String userName, String password}) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

}