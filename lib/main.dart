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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LiveTest(),
    );
  }
}
class LiveTest extends StatefulWidget {
  const LiveTest({Key? key}) : super(key: key);

  @override
  State<LiveTest> createState() => _LiveTestState();
}

class _LiveTestState extends State<LiveTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Feed",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
      body:
      // OrientationBuilder(
      //     builder: (context,index){
      //       return
      //     }
      // ),
      ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Image(image: NetworkImage("https://static-00.iconduck.com/assets.00/facebook-icon-512x512-seb542ju.png")),
                title: Text("Hello"),
              ),

            );
          }
      ),
    );
  }
}

