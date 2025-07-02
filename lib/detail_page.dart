import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: Text('DetailPage', style: TextStyle(fontSize: 28))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("DetailPage ", style: TextStyle(fontSize: 24))),
        ],
      ),
    );
  }
}
