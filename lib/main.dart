import 'package:flutter/material.dart';
import 'package:zaloapp/board.dart';

void main() {
  runApp( const MaterialApp(home: MainBoard()));
}
Color? red800 = Colors.blue;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: const BodyLayout(),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Colors.blue,
                  Colors.blueAccent
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          title: const TextField(
              decoration: InputDecoration(
                  hintText: "Tìm kiếm",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white))),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.add, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  const BodyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'Lee cảnh',
    'Hòa nguyễn',
    'Cao Hồng',
    'car',
    'railway',
    'run',
    'subway',
    'transit',
    'walk',
    'walk'
  ];

  return ListView.builder(
    itemCount: titles.length,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                child: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          titles[index],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const Text(
                        'đang online',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 10.0),
                child: const Text("10 giờ "),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 100.0),
            child: const Divider(
              color: Colors.grey,
            ),
          )
        ],
      );
    },
  );
}
