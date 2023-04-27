import 'package:flutter/material.dart';

class expt6 extends StatelessWidget {
  const expt6({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: drawer1(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class drawer1 extends StatefulWidget {
  const drawer1({super.key});

  @override
  State<drawer1> createState() => _drawer1State();
}

class _drawer1State extends State<drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawer Example",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text(
              "MEAL DIARIES",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text("owner@mealdiaries.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("Meal Diaries"),
            ),
          ),
          ListTile(
              title: const Text("Inbox"),
              leading: const Icon(Icons.mail),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mailpage()),
                );
              }),
          ListTile(
              title: const Text("Primary"),
              leading: const Icon(Icons.mail),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Primarypage()),
                );
              }),
          ListTile(
              title: const Text("Social"),
              leading: const Icon(Icons.people),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Socialpage()),
                );
              }),
          ListTile(
              title: const Text("Promotions"),
              leading: const Icon(Icons.local_offer),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Promotionpage()),
                );
              }),
        ]),
      ),
    );
  }
}

class Mailpage extends StatelessWidget {
  const Mailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail Screen"),
      ),
      body: Center(
          //     child: RaisedButton(
          //   color: Colors.amber,
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: Text("Mail Screen"),
          // )
          ),
    );
  }
}

class Primarypage extends StatelessWidget {
  const Primarypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Socialpage extends StatelessWidget {
  const Socialpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Promotionpage extends StatelessWidget {
  const Promotionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}







// Postllab gestures 


// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// //It is the entry point for your Flutter app.
// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Multiple Gestures Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Multiple Gestures Demo'),
//         ),
//         body: DemoApp(),
//       ),
//     ),
//   );
// }

// class DemoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RawGestureDetector(
//       gestures: {
//         AllowMultipleGestureRecognizer: GestureRecognizerFactoryWithHandlers<
//             AllowMultipleGestureRecognizer>(
//           () => AllowMultipleGestureRecognizer(),
//           (AllowMultipleGestureRecognizer instance) {
//             instance.onTap = () => print('It is the parent container gesture');
//           },
//         ),
//       },
//       behavior: HitTestBehavior.opaque,
//       //Parent Container
//       child: Container(
//         color: Colors.green,
//         child: Center(
//           //Now, wraps the second container in RawGestureDetector
//           child: RawGestureDetector(
//             gestures: {
//               AllowMultipleGestureRecognizer:
//                   GestureRecognizerFactoryWithHandlers<
//                       AllowMultipleGestureRecognizer>(
//                 () => AllowMultipleGestureRecognizer(), //constructor
//                 (AllowMultipleGestureRecognizer instance) {
//                   //initializer
//                   instance.onTap = () => print('It is the nested container');
//                 },
//               )
//             },
//             //Creates the nested container within the first.
//             child: Container(
//               color: Colors.deepOrange,
//               width: 250.0,
//               height: 350.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AllowMultipleGestureRecognizer extends TapGestureRecognizer {
//   @override
//   void rejectGesture(int pointer) {
//     acceptGesture(pointer);
//   }
// }




// NAVIGATION

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _count = 0;
//   int _selectedindex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Home Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Search Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Profile Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedindex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Navigation Drawer Example'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedindex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Color.fromARGB(255, 12, 126, 219),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//             backgroundColor: Color.fromARGB(255, 12, 126, 219),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//             backgroundColor: Color.fromARGB(255, 12, 126, 219),
//           ),
//         ],
//         type: BottomNavigationBarType.shifting,
//         currentIndex: _selectedindex,
//         selectedItemColor: Colors.black,
//         iconSize: 40,
//         onTap: _onItemTapped,
//         elevation: 5,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() {
//           _count++;
//         }),
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }




//NAVIGATION


//  import 'package:flutter/material.dart'; 
//   void main() => runApp(const MyApp()); 
//   class MyApp extends StatelessWidget {   const MyApp({Key? key}) : super(key: key); 
  
//   @override 
//   Widget build(BuildContext context) {     const title = 'Gestures'; 
//       return const MaterialApp(       title: title,       home: MyHomePage(title: title), 
//     ); 
//   } 
// }   class MyHomePage extends StatelessWidget {   final String title; 
//     const MyHomePage({Key? key, required this.title}) : super(key: key); 
  
//   @override 
//   Widget build(BuildContext context) {     return Scaffold(       appBar: AppBar( 
//         title: const Text('GeeksForGeeks'),         backgroundColor: Colors.green, 
//       ), 
//       body: const Center(child: 
//       MyButton()), 
//     ); 
//   } 
// }

// class MyButton {
// }   



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _count = 0;
//   int _selectedindex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Home Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Search Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//     Text(
//       'Profile Page',
//       style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedindex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Navigation Drawer Example'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedindex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Color.fromARGB(255, 12, 126, 219),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//             backgroundColor: Color.fromARGB(255, 12, 126, 219),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//             backgroundColor: Color.fromARGB(255, 12, 126, 219),
//           ),
//         ],
//         type: BottomNavigationBarType.shifting,
//         currentIndex: _selectedindex,
//         selectedItemColor: Colors.black,
//         iconSize: 40,
//         onTap: _onItemTapped,
//         elevation: 5,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() {
//           _count++;
//         }),
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }