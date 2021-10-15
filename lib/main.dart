
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo List App",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDoListApp")),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  List alisverisListesi = [];
  TextEditingController t1 = TextEditingController();
  add() {
    setState(() {
      alisverisListesi.add(t1.text);
      t1.clear();
    });
  }

  remove() {
    setState(() {
      alisverisListesi.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
    
     child:   Column(
       
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: alisverisListesi.length,
              itemBuilder:(context,indeks)=> ListTile(
                subtitle: const Text("Alışveriş Malzemeleri"),
              title: Text(alisverisListesi[indeks]),
            ),
            ), 
           
            ),
            TextField(
              controller: t1,
            ),
            ElevatedButton(onPressed: add, child: Text("Add")),
            ElevatedButton(onPressed: remove, child: Text("Remove")),
          ],
        ),
     
    );
  }
}
