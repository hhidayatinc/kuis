import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputTitle = new TextEditingController();
  TextEditingController inputDetail = new TextEditingController();
  List<File> listHasilItem = [];
  String _inputTitle = " ";
  String _inputDetail = " ";
  

  void input() {
    setState(() {
       _inputTitle = inputTitle.text;
       _inputDetail = inputDetail.text;
      listHasilItem.add(File("$_inputTitle", "$inputDetail"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Catatan Sederhana"),
        ),
        body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: inputTitle,
                        decoration: InputDecoration(hintText: "Insert Title"),
                        keyboardType: TextInputType.text,
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(50)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: inputDetail,
                        decoration: InputDecoration(hintText: "Insert Text"),
                        keyboardType: TextInputType.text,
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(100)
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: input,
                      color: Colors.blueAccent,
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                ListView(
                  children: listHasilItem.map((){

                  }),
                ),
              ],
              
            ),
            
            ),
      ),
    );
  }
}
