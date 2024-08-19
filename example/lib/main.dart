import 'package:flutter/material.dart';
import 'package:animated_rail/animated_rail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: AnimatedRail(
          background: Colors.indigo[300],
          maxWidth: 175,
          width: 60,
          direction: TextDirection.rtl,
          railTileConfig: RailTileConfig(
            iconSize: 22,
            iconColor: Colors.white,
            expandedTextStyle: TextStyle(fontSize: 15),
            collapsedTextStyle: TextStyle(fontSize: 12, color: Colors.white),
            activeColor: Colors.indigo,
            iconPadding: EdgeInsets.symmetric(vertical: 5),
            hideCollapsedText: true,
          ),
          cursorSize: Size(70, 70),
          cursorActionType: CursorActionTrigger.clickAndDrag,
          items: [
            RailItem(
              icon: Icon(Icons.home),
              label: "Home",
              content: Container(
                width: 500,
                height: 200,
                color: Colors.yellowAccent,
                child: Text(">>> Test"),
              ),
              cHeight: 200.0,
              cWidth: 500,
            ),
            RailItem(
              icon: Icon(Icons.message_outlined),
              label: 'Messages',
            ),
            RailItem(
              icon: Icon(Icons.notifications),
              label: "Notification",
              content: Container(
                width: 300,
                height: 600,
                color: Colors.blueAccent,
                child: Text(">>> Test"),
              ),
              cHeight: 600.0,
              cWidth: 300,
            ),
            RailItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        )));
  }
}
