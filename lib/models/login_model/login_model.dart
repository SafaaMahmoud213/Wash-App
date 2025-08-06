class LogInModel {
  int? responseCode;
  String? responseStatus;
  String? responseMessage;
  Data? data;

  LogInModel({
    this.responseCode,
    this.responseStatus,
    this.responseMessage,
    this.data,
  });

  LogInModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    responseStatus = json['ResponseStatus'];
    responseMessage = json['ResponseMessage'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ResponseCode'] = responseCode;
    data['ResponseStatus'] = responseStatus;
    data['ResponseMessage'] = responseMessage;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User {
  int? id;
  String? photo;
  String? name;
  String? email;
  String? mobile;
  Null firebaseId;

  User({
    this.id,
    this.photo,
    this.name,
    this.email,
    this.mobile,
    this.firebaseId,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photo = json['photo'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    firebaseId = json['firebase_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['photo'] = photo;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    data['firebase_id'] = firebaseId;
    return data;
  }
}

// class LoginModel {
//   final DataModel data;
//   final String responseStatus;
//   final String responseMessage;

//   LoginModel({
//     required this.data,
//     required this.responseStatus,
//     required this.responseMessage,
//   });

//   factory LoginModel.fromjson(Map<String, dynamic> jsonData) {
//     return LoginModel(
//       data: jsonData['data'],
//       responseStatus: jsonData['ResponseStatus'],
//       responseMessage: jsonData['ResponseMessage'],
//     );
//   }
// }

// class DataModel {
//   final DataModel user;

//   final String token;

//   DataModel({required this.user, required this.token});

//   factory DataModel.fromjson(Map<String, dynamic> jsonData) {
//     return DataModel(user: jsonData['user'], token: jsonData['token']);
//   }
// }

// class UserModel {
//   final int id;
//   final String photo;

//   final String name;
//   final String email;
//   final String mobile;

//   UserModel({
//     required this.id,
//     required this.photo,
//     required this.name,
//     required this.email,
//     required this.mobile,
//   });

//   factory UserModel.fromjson(Map<String, dynamic> jsonData) {
//     return UserModel(
//       id: jsonData['id'],
//       photo: jsonData['photo'],
//       name: jsonData['name'],
//       email: jsonData['email'],
//       mobile: jsonData['mobile'],
//     );
//   }
// }
