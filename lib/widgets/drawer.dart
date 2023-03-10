import 'package:flutter/material.dart';
import '../screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerWidget(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, SettingsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerWidget extends StatelessWidget {
  const _DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
        padding: EdgeInsets.zero,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/menu.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
