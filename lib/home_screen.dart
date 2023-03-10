import 'package:flutter/material.dart';
import 'package:user_preference/shared_preferences/preferences.dart';
import 'package:user_preference/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Preference'),
        elevation: 0,
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(' is Dark mode: ${preference.isDarkMode}'),
          Divider(),
          Text('Gender: ${preference.gender}'),
          Divider(),
          Text('Name: ${preference.name}'),
          Divider(),
        ],
      ),
    );
  }
}
