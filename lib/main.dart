import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; //add package riverpod
import 'package:myapp1/first_page.dart';
import 'package:myapp1/routes/app_routes.dart';

//final counterProvider = StateProvider<int>((ref) => 0,); // StateProvider - สำหรับค่าที่เปลี่ยนได้ (เช่น counter)
//final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);

void main() {
  runApp(const ProviderScope(child: MyApp())); //riverpod ตรอบ
}

class MyApp extends ConsumerWidget {
  //riverpod chang Consumerwidget
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //riverpod add WidgetRef ref
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Riverpod Counter & Theme Toggle',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode,
      initialRoute: AppRoutes.first,
      routes: AppRoutes.routes,

      //home: const FirstPage(), //เรียกอีกหน้า
    );
  }
}

// class MyHomePage extends ConsumerWidget {
//   //riverpod chang Consumerwidget
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     //riverpod add WidgetRef ref
//     final counter = ref.watch(
//       counterProvider,
//     ); //ref.watch ติดตามค่าเปลี่ยน, rebuild อัตโนมัติ
//     final theme = ref.watch(themeProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("River Demo"),
//         actions: [
//           IconButton(
//             onPressed: () {
//               ref.read(themeProvider.notifier).state = theme == ThemeMode.light
//                   ? ThemeMode.dark
//                   : ThemeMode.light;
//             },
//             icon: Icon(
//               theme == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
//             ),
//           ),
//         ],
//       ),
//       body: Center(child: Text("$counter", style: TextStyle(fontSize: 64))),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           ref.read(counterProvider.notifier).state++;

//           ///ref.read + แทนค่าใน state
//         },
//         child: ,const Icon(Icons.catching_pokemon)
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
