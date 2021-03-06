import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_chat_flutter/screens/chat_screen.dart';

void main() {
  runApp(
    new FriendlyChatApp());
}

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);

class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrindlyChat',
      theme: defaultTargetPlatform == TargetPlatform.iOS ? kIOSTheme : kDefaultTheme,
      home: new ChatScreen(),
    );
  }
}
