import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
import 'notes.dart';



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
  List<String> listHasilItem = []; //menyimpan hasil inputan user
  String _inputTitle = " "; //atribute bersifat private
  String _inputDetail = " "; //atribute bersifat private
  
//fungsi menambah notes
  void inputCatatan() {
    setState(() {
       _inputTitle = inputTitle.text;
      _inputDetail = inputDetail.text;
       listHasilItem.add("$_inputTitle           " "            $_inputDetail"); //untuk menyimpan hasilnya
       inputTitle.clear(); //menghilangkan input an sebelumnya
       inputDetail.clear();//menghilangkan input an sebelumnya
    });
  }

//fungsi untuk menghapus semua notes
  void clearAll(){
    setState(() {
      listHasilItem.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuis 1 - Catatan Sederhana',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[200],
          title: Text("Simple Notes"),
        ),
        body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InputFormButton(inputTitle: inputTitle, 
                inputDetail: inputDetail, 
                inputCatatan: inputCatatan,
                clearAll: clearAll),
                Expanded(
                     child: Notes(listHasilItem: listHasilItem),
                ),
               ],
            ),
        ),
      ),
    );
  }
}

