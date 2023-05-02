import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Browse Pests & Diseases',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Browse Pests & Diseases'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Card(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const ListTile(
//                     title: Text('Diseases'),
//                   ),
//                   Text('New cases: 24'),
//                 ],
//               ),
//             ),
//             Card(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const <Widget>[
//                   ListTile(
//                     title: Text('Pests'),
//                   ),
//                   Text('New cases: 30'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//      floatingActionButton: SizedBox(
//   width: 200,
//   height: 50,
//   child: FloatingActionButton(
//     onPressed: () {
//       // Add your onPressed logic here
//     },
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Icon(Icons.add),
//         Text("Report Disease"),
//       ],
//     ),
//     backgroundColor: Colors.green,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(25), // Use a high value of BorderRadius to create a pill shape
//       // side: BorderSide(color: Colors.red),
//     ),
//   ),
   child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.3, // Set the height to 30% of the screen height
                  width: double.infinity, // Set the width to occupy the entire screen width
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "LiveStock Diseases",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "New cases: 24",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Add some vertical spacing between the cards
                Container(
                  height: MediaQuery.of(context).size.height * 0.3, // Set the height to 30% of the screen height
                  width: double.infinity, // Set the width to occupy the entire screen width
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Crop Diseases",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "New cases: 30",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          width: 200,
          height: 50,
          child: FloatingActionButton(
            onPressed: () {
              // Add your onPressed logic here
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add),
                SizedBox(width: 5), // Add some spacing between the icon and text
                Text("Report Disease"),
              ],
            ),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Use a high value of BorderRadius to create a pill shape
              // side: BorderSide(color: Colors.red),
            ),
          ),
        ),
    
    );
  }
}
