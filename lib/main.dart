import 'package:flutter/material.dart';
import 'package:todaytest/WelcomePage.dart';

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
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _name= new TextEditingController();


@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller:  _name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Name'
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                WelcomePage(name:_name.text)
            ),
            );
          }, child: Text('Go to Welcome Page'))
        ],
      )
    );
  }
}

