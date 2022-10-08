class User {
  final int  id;
  final String  name;
  final String  avatar;

  User({
    required this.id,
    required this.name,
    required this.avatar,
  });
}

final User currentUser =
User(id: 0, name: 'You', avatar: 'assets/images/avatar.png');

final User addison =
User(id: 1, name: 'Addison', avatar: 'assets/images/avatar.png');
