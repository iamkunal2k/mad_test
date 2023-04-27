import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "images/floppydisk.jpg",
    "images/iphone.jpg",
    "images/laptop.jpg",
    "images/pendrive.jpg",
    "images/pixel.jpg",
    "images/tablet.jpg",
  ];




  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: SafeArea(
    //       child: ListView(
    //     padding: EdgeInsets.symmetric(vertical: 36.0),
    //     children: <Widget>[
    //                 SizedBox(
    //         height: 20.0,
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(
    //           left: 20.0,
    //           right: 120.0,
    //         ),
    //         child: Text(
    //           'Hii there, its Kunal!!!',
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //             fontSize: 30.0,
    //           ),
    //         ),
    //       ),

    //       SizedBox(
    //         height: 20.0,
    //       ),

    //     ],
    //   )),
    // );

    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Flutter GridView Demo"),
    //     ),
    //     body: GridView.count(
    //       crossAxisCount: 4,
    //       crossAxisSpacing: 8.0,
    //       mainAxisSpacing: 8.0,
    //       //shrinkWrap: true,
    //       children: List.generate(
    //         5,
    //         (index) {
    //           return Padding(
    //               padding: EdgeInsets.all(10),
    //               /* child: Image(
    //               image: NetworkImage(
    //                   'https://w7.pngwing.com/pngs/494/703/png-transparent-several-floppy-disks-floppy-disk-disk-storage-computer-data-storage-compact-disc-hard-disk-drive-floppy-disk-electronics-electronic-device-data-thumbnail.png'),
    //             ), */

    //               child: Icon(Icons.home, size: 50.0, color: Colors.blue)

    //               // child: Image.asset(
    //               //   "sim900a gsm.jpg",
    //               //   fit: BoxFit.fitWidth,
    //               // )
    //               );
    //         },
    //       ),
    //     ),
    //   ),
    // );




//      body: ListView(
//         reverse: true,
//         shrinkWrap: true,
//         itemExtent: 200,
//         scrollDirection: Axis.horizontal,
       
//  children: const [
//           Card(
//               child: ListTile(
//             leading: Icon(Icons.list),
//             title: Text('List1'),
//           )),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.list),
//               title: Text('List2'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.list),
//               title: Text('List3'),
//             ),
//           )
//         ],
//       ),
// ;


//  return Scaffold(

//   body: ListView(
//         // reverse: true,
//         shrinkWrap: true,
//         itemExtent: 200,
//         scrollDirection: Axis.vertical,
       
//  children: const [
//           Card(
//               child: ListTile(
//             leading: Icon(Icons.list),
//             title: Text('List1'),
//           )),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.list),
//               title: Text('List2'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.list),
//               title: Text('List3'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.list),
//               title: Text('List3'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.list),
//               title: Text('List3'),
//             ),
//           ),
//           Card(
//             child: ListTile(
//               leading: Icon(Icons.list),
//               title: Text('List3'),
//             ),
//           ),
//         ],
//       ),
//     );





 return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (buildcontext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: const Text("Productname"),
              subtitle: const Text("Price"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
); 

  }
}
