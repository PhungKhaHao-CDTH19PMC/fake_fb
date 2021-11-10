import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Facebook',
    debugShowCheckedModeBanner: false,
    home: FirstRoute(),
  ));
}

TextEditingController num1 = new TextEditingController();
TextEditingController num2 = new TextEditingController();

class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Text(
              'facebook',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'RobotoBlack',
                fontSize: 80,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(32, 60, 32, 20),
              child: TextField(
                controller: num1,
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 80),
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                ),
                controller: num2,
              ),
            ),
            SizedBox(
              width: 430.0,
              height: 50.0,
              child: OutlinedButton(
                onPressed: () {
                  if (num1.text == '' || num2.text == '') {
                    result = "Vui lòng nhập đầy đủ thông tin";
                  } else if (num1.text != num2.text) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThirtRoute()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreen()));
                  }
                  setState(() {});
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: const Text(
                  'SIGN IN',
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'RobotoBlack'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(result),
            )
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget homefb = Container(
      padding: EdgeInsets.all(32),
      child: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 18,
                    child: ClipOval(
                      child: Image.asset(
                        'images/lake.jpg',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text('Khả Hào',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoBlack')),
                      Text('08/11/2021',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontFamily: 'RobotoBlack')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text('Hồ đẹp không các bạn',
                style:
                    TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
          ),
          Image.asset(
            'images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mode_comment_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 18,
                    child: ClipOval(
                      child: Image.asset(
                        'images/lake.jpg',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text('Nguyễn Quốc Tuấn',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoBlack')),
                      Text('08/11/2021',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontFamily: 'RobotoBlack')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text('Đi chơi cùng ae, hihi',
                style:
                    TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
          ),
          Image.asset(
            'images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mode_comment_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget friend = Container(
      padding: EdgeInsets.all(32),
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Bạn chung:14',
                  style:
                      TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
              TextButton(
                child: Text(
                  'Hủy kết bạn',
                  style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Bạn chung:14',
                  style:
                      TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
              TextButton(
                child: Text(
                  'Hủy kết bạn',
                  style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Bạn chung:14',
                  style:
                      TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
              TextButton(
                child: Text(
                  'Hủy kết bạn',
                  style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 4',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Bạn chung:14',
                  style:
                      TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
              TextButton(
                child: Text(
                  'Hủy kết bạn',
                  style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Bạn chung:14',
                  style:
                      TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
              TextButton(
                child: Text(
                  'Hủy kết bạn',
                  style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 6',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Bạn chung:14',
                  style:
                      TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
              TextButton(
                child: Text(
                  'Hủy kết bạn',
                  style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Text('Hào Fake 7',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Bạn chung:14',
                  style:
                      TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
              TextButton(
                child: Text('Hủy kết bạn',
                    style:
                        TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack')),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ]),
    );
    Widget thongbao = Container(
      padding: EdgeInsets.all(32),
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 1',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text('đã thích bài đăng của bạn',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'RobotoBlack')),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 2',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text('đã thích bài đăng của bạn',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'RobotoBlack')),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text(
                            '08/11/2021',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontFamily: 'RobotoBlack'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text('đã thích bài đăng của bạn',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'RobotoBlack')),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 4',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text('đã thích bài đăng của bạn',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'RobotoBlack')),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text('đã thích bài đăng của bạn',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'RobotoBlack')),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text('Hào Fake 6',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontFamily: 'RobotoBlack')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text('đã thích bài đăng của bạn',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'RobotoBlack')),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 18,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Text('Hào Fake 7',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RobotoBlack')),
                          Text('08/11/2021',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text('đã thích bài đăng của bạn',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'RobotoBlack')),
              ),
            ],
          ),
        ),
      ]),
    );

    Image.asset(
      'images/lake.jpg',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.people_alt)),
                Tab(icon: Icon(Icons.notifications)),
              ],
            ),
            title: const Text('facebook',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          body: TabBarView(
            children: [
              homefb,
              friend,
              thongbao,
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://scontent.fvca1-4.fna.fbcdn.net/v/t1.6435-9/118387249_926204791198426_1997447177852213166_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Cdr4bHu45-kAX-iDNo2&_nc_ht=scontent.fvca1-4.fna&oh=dcf43114b0f06f00d34216ca556b80c0&oe=61ADEDA7"),
                    ),
                    accountName: Text(
                      "Khả Hào",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    accountEmail: Text(
                      " ",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Profile'),
                  leading: Icon(Icons.account_circle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileRoute()));
                  },
                ),
                ListTile(
                  title: Text('Security'),
                  leading: Icon(Icons.shield),
                  onTap: () {
                    print("Clicked");
                  },
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {
                    print("Clicked");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThirtRoute extends StatelessWidget {
  const ThirtRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'facebook',
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'RobotoBlack',
                fontSize: 80,
              ),
            ),
            const Text(
              "UPS...countn' sign in",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack'),
            ),
            const Text(
              'Your username and password do not match',
              style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack'),
            ),
            const Text(
              'Please try again',
              style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(32, 100, 32, 32),
              child: SizedBox(
                width: 430.0,
                height: 50.0,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: const Text(
                    'TRY AGAIN',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'RobotoBlack'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SecondRoute()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              const Text(
                'facebook',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 80,
                    fontFamily: 'RobotoBlack'),
              ),
              const Text(
                'Speak, friend, and enter',
                style: TextStyle(color: Colors.blue, fontFamily: 'RobotoBlack'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 400),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
            ],
          ),
        ));
  }
}

class ProfileRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://scontent.fvca1-4.fna.fbcdn.net/v/t1.6435-9/214562214_3128473930768091_7190416622963518929_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=e3f864&_nc_ohc=FLnF_cmrOJ8AX9827Ho&_nc_ht=scontent.fvca1-4.fna&oh=0c6f52a8b05aec543beb225f8bf4555b&oe=61B14148"),
                    fit: BoxFit.cover)),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent.fvca1-3.fna.fbcdn.net/v/t1.6435-9/246586518_3201985280083622_8496558111583378092_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=cHuf3FUKdzoAX9-mOeC&tn=mQZCbyvLWf7QHa4D&_nc_ht=scontent.fvca1-3.fna&oh=5b7fc22e393e742a8c4e1fccc223ae80&oe=61AF111E"),
                  radius: 60.0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Huỳnh Xuân Thịnh",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Gò Công, Tiền Giang",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Học tại Trường Cao đẳng Kỹ thuật Cao Thắng",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Email:huynhxuanthinh2001@gmail.com",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              elevation: 2.0,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                  child: Text(
                    "Skill Sets",
                    style: TextStyle(
                        letterSpacing: 2.0, fontWeight: FontWeight.w300),
                  ))),
          SizedBox(
            height: 15,
          ),
          Text(
            "App Developer || Web Developer",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Friends",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "1500",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "200000",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }
}
