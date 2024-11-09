import 'package:aplikasi2/controller/feed_controller.dart';
import 'package:aplikasi2/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FeedController()),
      ],
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Apps',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 120, 201, 255)),
          useMaterial3: true,
        ),
        home:const HomePage(),
      ),
    );
  }
}

