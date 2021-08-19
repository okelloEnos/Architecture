class Post{

}

class Comments{

}

class User{
  final String userName;
  final String phoneNumber;

  User({this.userName, this.phoneNumber});
}

class LogInResponse{
  final bool isSuccess;
  final String message;
  final int userId;

  LogInResponse({this.isSuccess, this.message, this.userId});
}