import 'package:flutter/material.dart';
import 'user_data.dart'; // Import the user_data.dart file

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Activity ',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              const TextSpan(
                text: '(03)',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode_outlined)),
        ],
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.white
          : Colors.black,
      body: const ScreenContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ScreenContent extends StatelessWidget {
  const ScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: userEntries.length,
      itemBuilder: (BuildContext context, int index) {
        final UserData user = userEntries[index];

        return InkWell(
          onTap: () {
            print('Clicked on ${user.name}');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).brightness == Brightness.light
                  ? const Color(0xFFF1F1FE)
                  : Colors.grey[800],
            ),
            height: 100,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(user.image),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${user.name}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text("liked “Autumn in my heart”"
                        , style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "2 minutes ago",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    print('${user.name} follow');
                  },
                  child: const Text('Follow'),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.black,
      ),
    );
  }
}
