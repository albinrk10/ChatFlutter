import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'config/theme/app_theme.dart';
import 'presentation/screen/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_)=>ChatProvider())
      ],
      child: MaterialApp(
        title: 'Yes No APP',
        debugShowCheckedModeBanner: false,
        theme:AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen()
      ),
    );
  }
}