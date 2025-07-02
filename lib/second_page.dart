import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; //add package riverpod
import 'package:myapp1/first_page.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page', style: TextStyle(fontSize: 28)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Hey Number $count", style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
