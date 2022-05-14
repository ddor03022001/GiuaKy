import 'package:flutter/material.dart';

Color? red800 = Colors.blue;

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

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
              icon: const Icon(Icons.settings, color: Colors.white),
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                child: const CircleAvatar(
                  radius: 26.0,
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
                        child: const Text(
                          "Nguyễn Văn A",
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const Text(
                        'Xem trang cá nhân',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 10.0),
                child: const Icon(Icons.people_rounded, color: Colors.blue,),
              )
            ],
          ),
        ),
        const Divider(
          color: Color(0xFFEDEAE8),
          thickness: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                child: const Icon(Icons.wallet_giftcard, color: Colors.blue,),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: const Text(
                          "Ví QR",
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const Text(
                        'Lưu trữ, xuất trình mã QR',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFFEDEAE8),
          thickness: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                child: const Icon(Icons.cloud, color: Colors.blue,),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: const Text(
                          "Cloud của tôi",
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.black,
                          ),
                        ),
                      ),
                      const Text(
                        'Lưu trữ các tin nhắn quan trọng',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xFFEDEAE8),
          thickness: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                child: const Icon(Icons.security, color: Colors.blue,),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: const Text(
                          "Tài khoản và bảo mật",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                child: const Icon(Icons.lock_open, color: Colors.blue,),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: const Text(
                          "Quyền riêng tư",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}

