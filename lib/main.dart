import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
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
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.email_sharp,
              color: Colors.pink,
              size: 150,
            ),
            const Text(
              'SignIn',
              style: TextStyle(
                color: Colors.white, fontFamily: 'RobotoBlack',
                fontSize: 70,
              ),
            ),
            const Text(
              'Speak, friend, and enter',
              style: TextStyle(
                color: Colors.black, fontFamily: 'RobotoBlack'
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
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white, fontFamily: 'RobotoBlack'),
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

    Widget homefb=Container(
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Khả Hào', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            child: Text('Hồ đẹp không các bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
          ),
          Image.asset('images/lake.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
          
          ),
          Container(
            padding:  EdgeInsets.only(top:10,bottom:10),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: (){ },
                child: const Text('Like', style: TextStyle(color:Colors.blue)),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: (){ },
                child: const Text('Bình luận', style: TextStyle(color:Colors.blue)),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: (){ },
                child: const Text('Chia sẽ', style: TextStyle(color:Colors.blue)),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Nguyễn Quốc Tuấn', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            child: Text('Đi chơi cùng ae, hihi', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
          ),
          Image.asset('images/lake.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
          
          ),
          Container(
            padding:  EdgeInsets.only(top:10,bottom:10),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: (){ },
                child: const Text('Like', style: TextStyle(color:Colors.blue)),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: (){ },
                child: const Text('Bình luận', style: TextStyle(color:Colors.blue)),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: (){ },
                child: const Text('Chia sẽ', style: TextStyle(color:Colors.blue)),
              ),
            ],
          ),
          ),
        ],
      ),
    );
    Widget friend= Container(
      padding:EdgeInsets.all(32),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 1', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Text('Bạn chung:14', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                TextButton(  
                child: Text('Hủy kết bạn', style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),),  
                onPressed: () {},  
              ), 
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 2', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Text('Bạn chung:14', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                TextButton(  
                child: Text('Hủy kết bạn', style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),),  
                onPressed: () {},  
              ), 
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 3', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Text('Bạn chung:14', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                TextButton(  
                child: Text('Hủy kết bạn', style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),),  
                onPressed: () {},  
              ), 
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 4', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Text('Bạn chung:14', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                TextButton(  
                child: Text('Hủy kết bạn', style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),),  
                onPressed: () {},  
              ), 
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 5', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Text('Bạn chung:14', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                TextButton(  
                child: Text('Hủy kết bạn', style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),),  
                onPressed: () {},  
              ), 
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 6', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Text('Bạn chung:14', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                TextButton(  
                child: Text('Hủy kết bạn', style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack'),),  
                onPressed: () {},  
              ), 
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
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
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text('Hào Fake 7', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Text('Bạn chung:14', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                TextButton(  
                child: Text('Hủy kết bạn', style: TextStyle(fontSize: 15.0, fontFamily: 'RobotoBlack')),  
                onPressed: () {},  
              ), 
              ],
            ),
          ),
        ] 
        
      ),
    );
    Widget thongbao= Container(
      padding:EdgeInsets.all(32),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
            child: Row(
              
              children: [
                Container(
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
          radius: 18,
          child: ClipOval(
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 1', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Container(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('đã thích bài đăng của bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                ),
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
            child: Row(
              
              children: [
                Container(
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
          radius: 18,
          child: ClipOval(
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 2', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Container(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('đã thích bài đăng của bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                ),
                
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
            child: Row(
              
              children: [
                Container(
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
          radius: 18,
          child: ClipOval(
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 3', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack'),
                )],
            ),
          ),
        ],
      ),
    ),
                Container(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('đã thích bài đăng của bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                ),
                
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
            child: Row(
              
              children: [
                Container(
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
          radius: 18,
          child: ClipOval(
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 4', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Container(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('đã thích bài đăng của bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                ),
                
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
            child: Row(
              
              children: [
                Container(
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
          radius: 18,
          child: ClipOval(
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 5', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Container(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('đã thích bài đăng của bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                ),
                
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
            child: Row(
              
              children: [
                Container(
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
          radius: 18,
          child: ClipOval(
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text('Hào Fake 6', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey, fontFamily: 'RobotoBlack')),
              ],
            ),
          ),
        ],
      ),
    ),
                Container(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('đã thích bài đăng của bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                ),
                
              ],
            ),
          ),
                    Container(
            padding: EdgeInsets.only(top: 10,bottom:10),
            child: Row(
              
              children: [
                Container(
      child: Row(
        children: [
        Container(
          child: CircleAvatar(
          radius: 18,
          child: ClipOval(
          child: Image.asset('images/lake.jpg',),
      ),
    ),
        ),
          Container(
            padding:  EdgeInsets.only(left: 10),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text('Hào Fake 7', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack')),
                Text('08/11/2021', style:TextStyle(fontSize:10,color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    ),
                Container(
                  padding:  EdgeInsets.only(left: 10),
                  child: Text('đã thích bài đăng của bạn', style: TextStyle(color: Colors.grey, fontFamily: 'RobotoBlack')),
                ),
                
              ],
            ),
          ),
        ] 
        
      ),
    );
 
    Image.asset('images/lake.jpg',
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
                Tab(icon: Icon(Icons.people_alt )),
                Tab(icon: Icon(Icons.doorbell_outlined)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              homefb,
              friend,
              thongbao,
            ],
          ),
          drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
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
            Icon(
              Icons.email_sharp,
              color: Colors.pink,
              size: 150,
            ),
            const Text(
              "UPS...countn' sign in",
              style: TextStyle(
                fontWeight: FontWeight.bold, fontFamily: 'RobotoBlack'
              ),
            ),
            const Text(
              'Your username and password do not match',
              style: TextStyle(
                color: Colors.grey, fontFamily: 'RobotoBlack'
              ),
            ),
            const Text(
              'Please try again',
              style: TextStyle(
                color: Colors.grey, fontFamily: 'RobotoBlack'
              ),
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
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text(
                    'TRY AGAIN',
                    style: TextStyle(color: Colors.white, fontFamily: 'RobotoBlack'),
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
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Column(
            children: [
              Icon(
                Icons.email,
                size: 200,
              ),
              const Text(
                'SignIn',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70, fontFamily: 'RobotoBlack'
                ),
              ),
              const Text(
                'Speak, friend, and enter',
                style: TextStyle(
                  color: Colors.black, fontFamily: 'RobotoBlack'
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 200),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
