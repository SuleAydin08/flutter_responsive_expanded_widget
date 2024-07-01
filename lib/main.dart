import 'package:flutter/material.dart';
import 'package:flutter_responsive_expanded_widget/home_page.dart';

void main() {
  runApp(const ResponsiveExample());
}

class ResponsiveExample extends StatelessWidget {
  const ResponsiveExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Eğer diğer sayfalardada material app kullanırsak maindeki debug(bool) koşulunu dikkate almaz.
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}