import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
  //List<File> listHasilItem = [];
  String _inputTitle = " ";
  String _inputDetail = " ";
  

  void input() {
    setState(() {
       _inputTitle = inputTitle.text;
       _inputDetail = inputDetail.text;
      //listHasilItem.add(File("$_inputTitle", "$inputDetail"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: Text("Simple Notes"),
        ),
        body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        controller: inputTitle,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Title"),
                          keyboardType: TextInputType.text,
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(50)
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    Container(
                     
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        controller: inputDetail,
                        decoration: InputDecoration(
                          hintText: "Insert Text",
                          border: new OutlineInputBorder(
                            
                          ),
                          ),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        
                      ),
                      
                    ),
                    SizedBox(height: 8.0,),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: RaisedButton(
                        onPressed:(){},
                        color: Colors.yellow[700],
                        child: Text("Save", style: TextStyle(color: Colors.white, fontSize: 17)),
                        ),
                    
                  
                    ),
                  
                  ],
                ),
                
                
              ],
              
            ),
            
            ),
      ),
    );
  }
}
