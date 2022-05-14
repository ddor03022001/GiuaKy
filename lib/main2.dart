import 'package:flutter/material.dart';

Color? red800 = Colors.blue;

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

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
              icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
              onPressed: () {},
            ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16),
            child: Text(
              "Khám phá game hay",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 487 / 451,
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            alignment: FractionalOffset.topCenter,
                            image: NetworkImage(
                                'https://play-lh.googleusercontent.com/KOJrBveCPD9tAPwB8bc56E_DujYLulkr6uWV4FRR8khMheYclRb_JGuGAHSJE6rHzdo'),
                          )),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: FractionalOffset.topCenter,
                              image: NetworkImage(
                                  'https://rowhouserestaurant.net/wp-content/uploads/2021/08/danh-bai-tien-len.png'),
                            )),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: FractionalOffset.topCenter,
                              image: NetworkImage(
                                  'https://cothu.vn/wp-content/uploads/2019/01/lo-go-co-tuong.png'),
                            )),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: FractionalOffset.topCenter,
                              image: NetworkImage(
                                  'http://blogsoccer.net/wp-content/uploads/2020/11/cach-choi-tu-lo-kho-1.jpg'),
                            )),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: FractionalOffset.topCenter,
                              image: NetworkImage(
                                  'https://play-lh.googleusercontent.com/KOJrBveCPD9tAPwB8bc56E_DujYLulkr6uWV4FRR8khMheYclRb_JGuGAHSJE6rHzdo'),
                            )),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFEDEAE8),
            thickness: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16, bottom: 16),
            child: Text(
              "Tiện ích",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            primary: false,
              shrinkWrap: true,
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: List.generate(choices.length, (index) {
                return Center(
                  child: SelectCard(
                    choice: choices[index],
                    key: null,
                  ),
                );
              })),
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Divider(
              color: Color(0xFFEDEAE8),
              thickness: 8,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16),
            child: Text(
              "Zalo connect",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6.0, left: 16),
            child: Text(
              "Đồ ăn ngon cách vài bước chân",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Container(
            height: 160,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 30),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 40,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Tìm kiếm",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.black26))),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color(0x0f908c8c)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.near_me_disabled,
                                      size: 24.0, color: Colors.pink),
                                )),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Gần bạn', style: TextStyle()),
                            ),
                          ]),
                    ),
                    Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color(0x0f908c8c)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.emoji_food_beverage_rounded,
                                      size: 24.0, color: Colors.green),
                                )),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child:
                                  Text('Thực phẩm', style: TextStyle()),
                            ),
                          ]),
                    ),
                    Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color(0x0f908c8c)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.heart_broken_outlined,
                                      size: 24.0, color: Colors.pink),
                                )),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Sức khỏe', style: TextStyle()),
                            ),
                          ]),
                    ),
                    Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Color(0x0f908c8c)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.ac_unit_rounded,
                                      size: 24.0, color: Colors.pink),
                                )),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Đặc sản', style: TextStyle()),
                            ),
                          ]),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Home', icon: Icons.home),
  Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  Choice(title: 'Phone', icon: Icons.phone),
  Choice(title: 'Camera', icon: Icons.camera_alt),
  Choice(title: 'Setting', icon: Icons.settings),
  Choice(title: 'Album', icon: Icons.photo_album),
  Choice(title: 'WiFi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x0f908c8c)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(choice.icon, size: 24.0, color: Colors.blue),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(choice.title, style: const TextStyle()),
            ),
          ]),
    );
  }
}
