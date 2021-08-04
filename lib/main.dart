
import 'package:courseflutter05copy04/heroTesting.dart';
import 'package:courseflutter05copy04/navigateToPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/scheduler.dart';
// import 'package:url_strategy/url_strategy.dart';
// import 'package:velocity_x/velocity_x.dart';

void main() {
  // setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'One';

  String secondDropDownValue = 'Apple';
  var items = ['Apple', 'Banana', 'Grapes', 'Orange', 'watermelon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /// Title
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Circle Avatar:',
                style: TextStyle(fontSize: 30.0),
              ),
            ),

            ///CircleAvatar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/allimages/imgtesting.jpg"),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'M. Umer Yasin',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: const Text('AH'),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      'Umer Yasin',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),

            /// Drop Down Button
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Drop down Button:',
                style: TextStyle(fontSize: 30.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      DropdownButton(
                        value: secondDropDownValue,
                        items: items.map((itemsname) {
                          return DropdownMenuItem(
                            value: itemsname,
                            child: Text(itemsname),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            secondDropDownValue = newValue!;
                          });
                        },
                      ),

                  //   ],
                  // // ),
                  // // Row(
                  //   children: [
                      const SizedBox(width: 30.0,),
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 24,
                        style: const TextStyle(
                            color: Colors.deepPurple, fontSize: 20.0),
                        underline: Container(
                          height: 3,
                          color: Colors.grey[300],
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // const Divider(),

            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child:
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      " You Selected : ",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.purple.shade800,
                      child: Text(dropdownValue),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      " : " + dropdownValue,
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),

            /// Navigator // Url // link // jump one page to an others.

            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Navigator in Flutter",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavigateToNextPage()),
                        );
                      },
                      child: const Text('More Details')),
                ],
              ),
              // child: Text(
              //   'Drop down Button:',
              //   style: TextStyle(fontSize: 30.0),
              // ),
            ),

            /// Hero

            const Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Hero Tesing",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'testinghero',
                    child: SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HeroTesting(),
                              ),
                            );
                          },
                          child: Image.asset('assets/allimages/imgtesting.jpg'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     children: [
            //       ElevatedButton(onPressed: (){
            //         Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateToNextPage()),);
            //       }, child: Text('More Details')),
            //     ],
            //   ),
            //   // child: Text(
            //   //   'Drop down Button:',
            //   //   style: TextStyle(fontSize: 30.0),
            //   // ),
            // ),
          ],
        ),
      ),

      //   ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
