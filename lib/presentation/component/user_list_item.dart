import 'package:flutter/material.dart';

class UserLiteItem extends StatelessWidget {
  const UserLiteItem({
    Key? key,
    required this.birthday,
    required this.name,
    required this.thumbnailLink,
  }) : super(key: key);

  final String name;
  final String thumbnailLink;
  final String birthday;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(backgroundImage: NetworkImage(thumbnailLink)),
    );
  }
}
