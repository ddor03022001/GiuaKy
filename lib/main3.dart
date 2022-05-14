import 'package:flutter/material.dart';

Color? red800 = Colors.blue;

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

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
              icon: const Icon(Icons.image, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications_active, color: Colors.white),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 8.0, right: 5.0),
                  child: const CircleAvatar(
                    radius: 26.0,
                    backgroundImage: NetworkImage(
                        'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hôm nay bạn thế nào',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
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
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFFE8E5E5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.image,
                        color: Colors.green,
                        size: 16,
                      ),
                      Text(
                        'Đăng ảnh',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFFE8E5E5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.videocam_sharp,
                        color: Colors.pink,
                        size: 16,
                      ),
                      Text(
                        'Đăng ảnh',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFFE8E5E5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.photo_album,
                        color: Colors.blue,
                        size: 16,
                      ),
                      Text(
                        'Tạo album',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Color(0xFFEDEAE8),
            thickness: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6.0, left: 16),
            child: Text(
              "Khoẳng khắc",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 180,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000"),
                          fit: BoxFit.cover),
                      color: Color(0xFFE8E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: const [
                        Spacer(),
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'Đăng ảnh',
                            style: TextStyle(fontSize: 12,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 180,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://photo-cms-baophapluat.zadn.vn/w800/Uploaded/2022/dwkoudxkedwwyqdw/2022_02_17/141259500-4342002982480038-4089060647686067046-n-adcd19a1-5417.jpeg"),
                          fit: BoxFit.cover),
                      color: Color(0xFFE8E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: const [
                        Spacer(),
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'Đăng ảnh',
                            style: TextStyle(fontSize: 12,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 180,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000"),
                          fit: BoxFit.cover),
                      color: Color(0xFFE8E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: const [
                        Spacer(),
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'Đăng ảnh',
                            style: TextStyle(fontSize: 12,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 180,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000"),
                          fit: BoxFit.cover),
                      color: Color(0xFFE8E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: const [
                        Spacer(),
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'Đăng ảnh',
                            style: TextStyle(fontSize: 12,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 180,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000"),
                          fit: BoxFit.cover),
                      color: Color(0xFFE8E5E5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: const [
                        Spacer(),
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'Đăng ảnh',
                            style: TextStyle(fontSize: 12,color: Colors.white),
                          ),
                        ),
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

          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                    child: const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
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
                              'Thanh Bình',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const Text(
                            'Hôm nay lúc 10:36',
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
                    child: const Icon(Icons.more_horiz, color: Colors.black,),
                  )
                ],
              ),
              Image.network("https://trixie.com.vn/media/images/article/86519243/tieu-su-ca-si-quang-ha-1.jpg"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.favorite_border_outlined, size: 40,),
                    Text('1', style: TextStyle(fontSize: 20),),
                    Icon(Icons.insert_comment, size: 40,),
                    Text('1', style: TextStyle(fontSize: 20),),
                    Spacer(),
                    Text('Thích bởi', style: TextStyle(fontSize: 14),),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage: NetworkImage(
                          'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                    ),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage: NetworkImage(
                          'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Divider(
            color: Color(0xFFEDEAE8),
            thickness: 8,
          ),

          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                    child: const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
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
                              'Chủ nhật',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const Text(
                            'Hôm nay lúc 14:36',
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
                    child: const Icon(Icons.more_horiz, color: Colors.black,),
                  )
                ],
              ),
              Image.network("https://www.inpixio.com/remove-background/images/main-before.jpg"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.favorite_border_outlined, size: 40,),
                    Text('1', style: TextStyle(fontSize: 20),),
                    Icon(Icons.insert_comment, size: 40,),
                    Text('1', style: TextStyle(fontSize: 20),),
                    Spacer(),
                    Text('Thích bởi', style: TextStyle(fontSize: 14),),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage: NetworkImage(
                          'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                    ),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage: NetworkImage(
                          'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Divider(
            color: Color(0xFFEDEAE8),
            thickness: 8,
          ),

          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 16, top: 8.0, bottom: 8.0, right: 5.0),
                    child: const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
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
                              'Chủ nhật',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const Text(
                            'Hôm nay lúc 14:36',
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
                    child: const Icon(Icons.more_horiz, color: Colors.black,),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Remove image backgrounds automatically in 5 seconds with just one click. Dont spend hours manually picking pixels. Upload your photo now & see the magic.'),
              ),
              Padding(
                padding: const EdgeInsets.only( bottom: 8.0),
                child: const Divider(
                  color: Color(0xFFEDEAE8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.favorite_border_outlined, size: 40,),
                    Text('1', style: TextStyle(fontSize: 20),),
                    Icon(Icons.insert_comment, size: 40,),
                    Text('1', style: TextStyle(fontSize: 20),),
                    Spacer(),
                    Text('Thích bởi', style: TextStyle(fontSize: 14),),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage: NetworkImage(
                          'https://static.bangkokpost.com/media/content/20200619/c1_1937552_200619122619.jpg'),
                    ),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundImage: NetworkImage(
                          'https://kenh14cdn.com/thumb_w/660/2020/3/21/unnamed-1-15847653551952041241663.jpg'),
                    ),
                  ],
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
