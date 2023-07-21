import 'package:flutter/material.dart';
import 'package:news_app/screens/discover_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomePage')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const DiscoverPage()));
        },
        child: const Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}
