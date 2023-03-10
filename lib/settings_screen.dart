import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preference/provider/theme_provider.dart';
import 'package:user_preference/shared_preferences/preferences.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings_Screen';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarkMode = preference.isDarkMode;
  // int gender = preference.gender;
  // String name = preference.name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings Screen'),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SwitchListTile.adaptive(
                  title: Text('Dark Mode'),
                  value: preference.isDarkMode,
                  onChanged: (value) {
                    preference.isDarkMode = value;
                    final ThemeProvider =
                        Provider.of<themeProvider>(context, listen: false);
                    value
                        ? ThemeProvider.setDarkMode()
                        : ThemeProvider.setLigthMode();
                    setState(() {});
                  },
                ),
                Divider(),
                RadioListTile<int>(
                  value: 1,
                  groupValue: preference.gender,
                  title: Text('Masculino'),
                  onChanged: (value) {
                    preference.gender = value ?? 1;
                    setState(() {});
                  },
                ),
                Divider(),
                RadioListTile<int>(
                  value: 2,
                  groupValue: preference.gender,
                  title: Text('Fememnino'),
                  onChanged: (value) {
                    preference.gender = value ?? 1;
                    setState(() {});
                  },
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    onChanged: ((value) {
                      preference.name = value;
                      setState(() {});
                    }),
                    initialValue: preference.name,
                    decoration: InputDecoration(
                      label: Text('Nombre'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
