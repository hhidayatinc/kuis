import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFormButton extends StatelessWidget {
  const InputFormButton({
    Key key,
    @required this.inputTitle,@required this.inputDetail,
    @required this.inputCatatan,@required this.clearAll,
  }) : super(key: key);

  final TextEditingController inputTitle;
  final TextEditingController inputDetail;
  final Function inputCatatan;
  final Function clearAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: inputTitle,
            decoration: InputDecoration(
              //border: OutlineInputBorder(),
              hintText: "Title"),
              keyboardType: TextInputType.text,
              inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(50)
            ],
          ),
        ),
        Container(
         padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: inputDetail,
            decoration: InputDecoration(
              hintText: "Insert Text",
              ),
             keyboardType: TextInputType.multiline,//untuk membuat text lebih panjang
            maxLines: null,
            ),
         ),
        SizedBox(height: 10.0,),
        FloatingActionButton.extended(//button with an optional icon and label
          onPressed: inputCatatan, //memanggil fungsi untuk menyimpan hasil inputan user
          backgroundColor: Colors.teal[200],
          icon: Icon(Icons.add), 
          label: Text('Add to my note'),
          ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,//memberikan space diantara row secara horizontal
          children: [
            Container(
              margin: EdgeInsets.all(10),
          child: Text(
            "My Notes",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
            ),
            FloatingActionButton.extended(
              onPressed: clearAll, //memanggil fungsi untuk menghapus semua notes
              icon: Icon(Icons.delete),
              label: Text(''),
              backgroundColor: Colors.teal[200],
              ),
          ],
      ),
      ],
    );
  }
}
