import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp1/routes/app_routes.dart';

// Provider ตัวนับ
final counterProvider = StateProvider<int>((ref) => 0);

// Provider สำหรับ theme
final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);

class FirstPage extends ConsumerWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final theme = ref.watch(themeProvider);
    final size = MediaQuery.of(context).size; //size

    return Scaffold(
      appBar: AppBar(
        title: const Text("River Demo"),
        actions: [
          IconButton(
            onPressed: () {
              // toggle light/dark mode
              ref.read(themeProvider.notifier).state = theme == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            },
            icon: Icon(
              theme == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
            ),
          ),
        ],
      ),

      // BODY
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // จัดตรงกลางแนวตั้ง
          children: [
            Text('Size => ${size.width}) x ${size.height}'),
            Text("$counter", style: const TextStyle(fontSize: 64)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.second,
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (_) => const SecondPage()),
                ); //transition page CupertinoPageRoute
              },
              child: const Text("Go to Second Page"),
            ),
          ],
        ),
      ),

      // FAB (Floating Action Button)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
