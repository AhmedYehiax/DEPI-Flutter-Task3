class UserData {
  final String name;
  final String image;

  UserData({required this.name, required this.image});
}

final List<UserData> userEntries = [
  UserData(name: 'Alice', image: 'images/alice.png'),
  UserData(name: 'Bob', image: 'images/alice.png'),
  UserData(name: 'Charlie', image: 'images/alice.png'),
  UserData(name: 'David', image: 'images/david.png'),
  UserData(name: 'Eve', image: 'images/Eve.png'),
  UserData(name: 'Frank', image: 'images/alice.png'),
  UserData(name: 'Grace', image: 'images/Eve.png'),
  UserData(name: 'Hank', image: 'images/david.png'),
  UserData(name: 'Ivy', image: 'images/Eve.png'),
];
