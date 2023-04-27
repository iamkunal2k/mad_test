import 'package:flutter/material.dart';
class expt3 extends StatelessWidget {
  const expt3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("hello"),
    ),
    body: ListView(
      scrollDirection: Axis.vertical,
        children: const [
          Card(
              child: ListTile(
            leading: Icon(Icons.list),
            title: Text('List1'),
              iconColor: Colors.deepPurple,
              textColor: Colors.amber,
          )),
          Card(
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text('List2'),
              iconColor: Colors.deepPurple,
              textColor: Colors.amber,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text('List3'),
              iconColor: Colors.deepPurple,
              textColor: Colors.amber,
            ),
          ),
          Card(
            child: ListTile(
              title: Text("hello"),
              leading: Icon(Icons.access_alarms_sharp),
              iconColor: Colors.amberAccent,
            ),
          )
        ],
    ),);
  }
}


//gridView


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
//         primarySwatch: Colors.green,
//       ),
//       home: const MyHomePage(title: 'Flutter ListView Demo '),
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
//   List<String> images = [
//     "images/floppydisk.jpg",
//     "images/iphone.jpg",
//     "images/laptop.jpg",
//     "images/pendrive.jpg",
//   ];

//   @override
//    Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Flutter GridView Demo"),
//         ),
//         body: GridView.count(
//           crossAxisCount: 3,
//           crossAxisSpacing: 8.0,
//           mainAxisSpacing: 8.0,
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           children: List.generate(
//             5,
//             (index) {
//               return Padding(
//                 padding: EdgeInsets.all(10),
//                 // child: Image(
//                 //   image: NetworkImage(
//                 //       'https://w7.pngwing.com/pngs/494/703/png-transparent-several-floppy-disks-floppy-disk-disk-storage-computer-data-storage-compact-disc-hard-disk-drive-floppy-disk-electronics-electronic-device-data-thumbnail.png'),
//                 // ), 
               
//                     child:
//                         Icon(Icons.favorite, size: 50.0, color: Colors.red)

        
//               );
//             },
//           ),
//         ),
//       ),
//     );

// }
// }


