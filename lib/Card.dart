import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('FlutterDemo')),
          drawer: Drawer(
              child: AspectRatio(
            aspectRatio: 2.0 / 1.0,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircleAvatar(
                        child: FlutterLogo(),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.change_history),
                  title: Text('Change history'),
                  onTap: () {
                    Navigator.pop(context); 
                  },
                )
              ],
            ),
          )),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                //宽高比
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png"),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/3.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png')
                        ),
                title: Text("xxxxxxxx"),
                subtitle: Text("xxxxxxxxxx"),
              )
            ],
          ),
        )
      ],
    );
  }
}
