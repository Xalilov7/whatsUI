import 'package:chat_ui/theme_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
  final themeChager = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Column(
        children: [
        RadioListTile<ThemeMode>(
          title: Text("Ligt Mode"),
            groupValue: themeChager.themeMode,
            onChanged: themeChager.setTheme,
            value: ThemeMode.light,
        ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Mode"),
            groupValue: themeChager.themeMode,
            onChanged: themeChager.setTheme,
            value: ThemeMode.dark,
          ),
        ],
      ),
    );
  }
}
