import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wash_app_flutter/core/api/api_consumer.dart';
import 'package:wash_app_flutter/core/api/end_point.dart';
import 'package:wash_app_flutter/core/error/server_exceptions.dart';
import 'package:wash_app_flutter/cubit/login/login_state.dart';
import 'package:wash_app_flutter/models/login_model/login_model.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiConsumer api;
  LoginCubit(this.api) : super(LoginInitial());

  final GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController phoneController = TextEditingController();
  LogInModel? loginModel;
  logIn() async {
    try {
      emit(LoginLoadingState());
      final response = await api.post(
        EndPoint.logIn,
        data: {"mobile": phoneController.text},
        isFormData: true,
      );

      loginModel = LogInModel.fromJson(response);
      emit(LoginSuccessState());
    } on ServerExceptions catch (e) {
      emit(LoginFailureState(msg: e.errorModel.responseMessage));
    }
  }
}
