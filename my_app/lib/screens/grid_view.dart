import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView Demo"),
        ),
        body: GridView.count(
          crossAxisCount: 5,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          //shrinkWrap: true,
          children: List.generate(
            5,
            (index) {
              return Padding(
                  padding: EdgeInsets.all(10),
                  /* child: Image(
                  image: NetworkImage(
                      'https://w7.pngwing.com/pngs/494/703/png-transparent-several-floppy-disks-floppy-disk-disk-storage-computer-data-storage-compact-disc-hard-disk-drive-floppy-disk-electronics-electronic-device-data-thumbnail.png'),
                ), */

                  child: Icon(Icons.home, size: 50.0, color: Colors.blue)

// child: Image.asset("images/img1.png",fit: BoxFit.fitWidth,)

                  );
            },
          ),
        ),
      ),
    );
  }
}
