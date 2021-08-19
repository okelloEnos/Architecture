import 'package:architecture_training/services/Api/api.dart';
import 'package:architecture_training/services/datamodels/api_models.dart';

class FakeApi implements Api{
  @override
  Future<List<Comments>> getCommentsForPost({int userId}) async{
    // TODO: implement getCommentsForPost
  
    await Future.delayed(Duration(seconds: 2));
    if(userId == 1){
      return List<Comments>.generate(10, (index) => Comments());
    }
    return null;
  }

  @override
  Future<List<Post>> getPostForUser({int userId}) async{
    // TODO: implement getPostForUser
    await Future.delayed(Duration(seconds: 2));
    if(userId == 1){
      return List<Post>.generate(10, (index) => Post());
    }
    return null;
  }

  @override
  Future<User> getUser({int userId}) async{
    // TODO: implement getUser
    await Future.delayed(Duration(seconds: 2));
    if(userId == 1){
      return User(userName: 'Dane', phoneNumber: '071235490');
    }
    return null;
  }

  @override
  Future<LogInResponse> logIn({String userName, String password}) async{
    // TODO: implement logIn
    await Future.delayed(Duration(seconds: 2));

    if(userName == 'dane'){
      return LogInResponse(userId: 1);
    }

    if(userName == 'filled'){
      return LogInResponse(isSuccess: false, message: 'User Does not exist');
    }
    return null;
  }

}