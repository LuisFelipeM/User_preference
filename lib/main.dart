import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preference/provider/theme_provider.dart';
import 'package:user_preference/screens.dart';
import 'package:user_preference/shared_preferences/preferences.dart';

// void main() => runApp(const UserPreferenceApp());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await preference.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => themeProvider(isDarkmode: preference.isDarkMode))
    ],
    child: const UserPreferenceApp(),
  ));
}

class UserPreferenceApp extends StatelessWidget {
  const UserPreferenceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UserPreference',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SettingsScreen.routeName: (_) => SettingsScreen(),
      },
      theme: Provider.of<themeProvider>(context).currentTheme,
    );
  }
}
