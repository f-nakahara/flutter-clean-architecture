import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/component/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: UserList(),
      ),
    );
  }
}
