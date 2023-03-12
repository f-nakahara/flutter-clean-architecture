import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/component/user_list_item.dart';
import 'package:flutter_clean_architecture/presentation/notifier/user_list_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserList extends ConsumerWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userListNotifierProvider);
    return state.when(
      data: (users) {
        return ListView(
          children: users
              .map(
                (e) => UserLiteItem(
                    birthday: e.birthday,
                    name: e.name,
                    thumbnailLink: e.thumbnailLink),
              )
              .toList(),
        );
      },
      error: (error, _) {
        return Center(
          child: Text(
            error.toString(),
          ),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
