import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> listItems =
      List<String>.generate(51, (i) => "List Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Demo'),
      ),
      body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.send,
                    color: Colors.pink,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${listItems[index]}',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      Text(
                        'The Sub Heading',
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.pinkAccent),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.cancel,
                    color: Colors.pink,
                  ),
                ),
                Divider(
                  color: Colors.pink,
                )
              ],
            ),
          );
        },
      ),

      //Staic List View
      //Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: ListView(
      //     children: <Widget>[
      //       ListTile(
      //         title: Text('Call'),
      //         trailing: Icon(Icons.call),
      //       ),
      //       ListTile(
      //         title: Text(' Video Call'),
      //         trailing: Icon(Icons.video_call),
      //       ),
      //       ListTile(
      //         title: Text('Text Message'),
      //         trailing: Icon(Icons.sms),
      //       ),
      //       ListTile(
      //         title: Text('Message Failed'),
      //         trailing: Icon(Icons.sms_failed),
      //       ),
      //       ListTile(
      //         title: Text('Update'),
      //         trailing: Icon(Icons.update),
      //       ),
      //       ListTile(
      //         title: Text('File Upload'),
      //         trailing: Icon(Icons.file_upload),
      //       ),
      //       ListTile(
      //         title: Text('Cloud Upload'),
      //         trailing: Icon(Icons.cloud_upload),
      //       ),
      //       ListTile(
      //         title: Text('Send'),
      //         trailing: Icon(Icons.send),
      //       ),
      //       ListTile(
      //         title: Text('Cancel'),
      //         trailing: Icon(Icons.cancel),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
