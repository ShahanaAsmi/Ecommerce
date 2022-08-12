import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: ClipOval(
                          child: Image.network(
                            'https://m.media-amazon.com/images/M/MV5BMjI2NTI0NjczM15BMl5BanBnXkFtZTgwMDc4NDI1NDM@._V1_.jpg',
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              color: Colors.yellow, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text('Nicholas Adams',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                const Text(
                  'nicholasAdams@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(189, 50),
                        primary: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Upgrade to PRO',
                      style: TextStyle(color: Colors.black),
                    )),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  selected: true,
                  selectedTileColor: Colors.white,
                  leading: const Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Privacy',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20.0)),
                  selected: true,
                  selectedTileColor: Colors.white,
                  leading: const Icon(
                    Icons.history,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Purchase History',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20.0)),
                  selected: true,
                  selectedTileColor: Colors.white,
                  leading: const Icon(
                    Icons.question_mark,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Help & Support',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20.0)),
                  selected: true,
                  selectedTileColor: Colors.white,
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20.0)),
                  selected: true,
                  selectedTileColor: Colors.white,
                  leading: const Icon(
                    Icons.person_add_alt_1_rounded,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Invite a friend',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {},
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(20.0)),
                  selected: true,
                  selectedTileColor: Colors.white,
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'LogOut',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
