import 'package:flutter/material.dart';

class PembayaranPage extends StatefulWidget {
  @override
  _PembayaranPageState createState() => _PembayaranPageState();
}

class _PembayaranPageState extends State<PembayaranPage> {
  Item pilihItem;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pembayaran"),
      ),
      body: Center(
        child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey ),
          child: Align(
            alignment: Alignment.centerLeft,
                      child: DropdownButton<Item>(
              hint: Text("pilih kamar"),
              value: pilihItem,
              isExpanded: true,
              onChanged: (Item val) {
                setState(() {
                  pilihItem = val;
                });
              },
              items: pilihItem.user
                  .map((Item user) => DropdownMenuItem<Item>(
                        value: user,
                        child: Row(
                          children: [
                            Text(user.number),
                            SizedBox(width: 10),
                            Text(user.name),
                            SizedBox(width: 100),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String number;

  Item(
    this.number,
    this.name,
  );

  List<Item> user = <Item>[
    Item("1", "kamar"),
    Item("2", "kamar"),
    Item("3", "kamar"),
    Item("4", "kamar"),
    Item("5", "kamar"),
    Item("6", "kamar"),
    Item("7", "kamar"),
    Item("8", "kamar"),
    Item("9", "kamar"),
    Item("10", "kamar"),
  ];
}
