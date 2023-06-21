import 'package:belajar_networking/model/user_list_model/user_list_model.dart';
import 'package:belajar_networking/services/user_service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserServices services = UserServices();
  UserCubit() : super(UserInitial());

  Future<void> fetchList() async {
    try {
      emit(UserLoading());
      final UserListModel userListModel = await services.fetchList();
      emit(UserLoaded(userListModel));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
