import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //class baru dengan menggunakan turunan StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //nama aplikasi
      title: 'Learning Apps',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //ThemeData
      home: Home(),
    );
    //MaterialApp
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

//create class baru dengan nama HomeState
//didalamnya terdapat list
//isi list berupa Dart, java, c, c++, c#, kotlin,javascript
//atau bisa disesuaikan dengan keinginan

class HomeState extends State<Home> {
  List<String> list = [
    'Dart',
    'Java',
    'C',
    'C++',
    'C#',
    'Kotlin',
    'JavaScript'
  ];
  String item = 'Dart';

  void onChanged(String value) {
    setState(() {
      item = value;
    });
  }

  @override
  //Memunculkan Tulisan atau icon atas, Tampilan DropDown Button
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LearningApps'),
      ),

      //Tata Letak

      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              // Text('Item aktif : $item'),
              DropdownButton(
                value: item,
                items: list.map((String val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Row(
                      children: <Widget>[
                        //ini untuk icon gambar androidnya
                        //jika ingin menambahkan icon lagi
                        //jika ingin menambahkan icon lagi, cukup tambahkan list baru
                        Icon(Icons.phone_android),
                        Text(val),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  onChanged(value!);
                },
              ),
            ],
          )),
    );
  }
}
