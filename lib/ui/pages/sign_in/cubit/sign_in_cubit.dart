import 'package:alex_astudillo_erp/src/common.dart';
import 'package:alex_astudillo_erp/src/user/application/user_service.dart';
import 'package:alex_astudillo_erp/ui/pages/sign_in/cubit/sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required this.userService,
  }) : super(const SignInState());

  final UserService userService;

  void changePasswordVisibility() {
    emit(state.copyWith(viewPassword: !state.viewPassword));
  }

  Future<String?> signIn(String username, String password) async {
    try {
      emit(state.copyWith(loading: true));
      await userService.signIn(username, password);
    } on HttpException catch (e) {
      return e.message;
    } on Exception catch (e) {
      return e.toString();
    } finally {
      emit(state.copyWith(loading: false));
    }
    return null;
  }
}
