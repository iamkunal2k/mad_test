// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(

//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

// Text & Scaffold Widget
@override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: "My First App",
//     theme: ThemeData(primarySwatch: Colors.blueGrey),
//     home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text("My AppBar"),
//         ),
//         body: Container(

//           child: Padding(
//             padding: EdgeInsets.all(14.0),
//             child: Text(
//               'Hello World!',
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.w700,
//                 color: Colors.blue,
//               ),
//             ),
//           ),
//         )),
//   );
// }

import 'package:flutter/material.dart';
import 'package:my_app/screens/form.dart';
// import 'package:my_app/screens/home_screen.dart';
// import 'package:my_app/screens/grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff3ebace),
        accentColor: Color(0xffd8ecf1),
        scaffoldBackgroundColor: Color.fromARGB(255, 235, 238, 241),
      ),
      // home: const HomeScreen(),
      // home: const MyApp(),
      home: const form(),
    );
  }
}
