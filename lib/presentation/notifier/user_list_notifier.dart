import 'package:flutter_clean_architecture/domain/usecase/get_users_usecase.dart';
import 'package:flutter_clean_architecture/presentation/state/user_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userListNotifierProvider =
    StateNotifierProvider<UserListNotifier, AsyncValue<List<UserState>>>(
  (ref) => UserListNotifier(
    getUsersUsecase: ref.read(getUsersUsecaseProvider),
  ),
);

class UserListNotifier extends StateNotifier<AsyncValue<List<UserState>>> {
  UserListNotifier({required GetUsersUsecase getUsersUsecase})
      : _getUsersUsecase = getUsersUsecase,
        super(const AsyncLoading()) {
    _fetch();
  }

  final GetUsersUsecase _getUsersUsecase;

  /// ユーザー一覧の同期
  Future<void> _fetch() async {
    state = await AsyncValue.guard(() async {
      final res = await _getUsersUsecase.execute();
      return res.map((e) => UserState.fromEntity(e)).toList();
    });
  }
}
