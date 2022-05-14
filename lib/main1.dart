import 'package:flutter/material.dart';

Color? red800 = Colors.blue;

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

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
                colors: <Color>[Colors.blue, Colors.blueAccent],
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
              icon: const Icon(Icons.person_add_alt_1_outlined,
                  color: Colors.white),
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        "BẠN BÈ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 3,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        "NHÓM",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Divider(
                          height: 2,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        "QA",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Divider(
                          height: 2,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: const [
                Icon(
                  Icons.account_circle_rounded,
                  color: Colors.blue,
                  size: 48,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Lời mời kết bạn",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
            child: Row(
              children: const [
                Icon(
                  Icons.perm_contact_calendar_outlined,
                  color: Colors.blue,
                  size: 48,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Dnh bạ máy",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFEDEAE8),
            thickness: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFEDEAE8),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Tất cả 118",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xADADB3BD)),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Mới truy cập 118",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          _myListView(context),
        ],
      ),
    );
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
    'railway'
  ];

  return ListView.builder(
    itemCount: titles.length,
    primary: false,
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
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
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
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 10.0),
                child: Row(
                  children: const [
                    Icon(Icons.local_phone_outlined),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Icon(Icons.video_call_outlined),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      );
    },
  );
}
