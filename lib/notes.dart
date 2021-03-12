import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  const Notes({
    Key key,
    @required this.listHasilItem,
  }) : super(key: key);

  final List<String> listHasilItem;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 16, //memberikan space antar grid secara vertikal
      mainAxisSpacing: 15, //memberikan space antar grid secara horizontal
      crossAxisCount: 2, //jumlah grid dalam satu baris 
      children: listHasilItem.map((String value) {
        return Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            value,
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          color: Colors.teal[200],
        );
      }).toList(),
     );
  }
}

