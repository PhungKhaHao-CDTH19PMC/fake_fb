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
          children: <Widget>[
            SizedBox(height: 120),
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

class routebb extends StatefulWidget {
  const routebb({Key? key}) : super(key: key);
  _routebbState createState() => _routebbState();
}
class _routebbState extends State<routebb>{
  @override
  Widget build(BuildContext context) {
        Widget friend = Padding(
      padding: EdgeInsets.all(32),
      child: ListView(children: [
        Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10),
                child: SizedBox(
                width: 120,
                height: 32,//  // specific value
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text("<-- Quay lại",
                          style: TextStyle(fontSize: 14)),
                  ),
                )
              ),
              
            ],
          )
        ),
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                    child: Text("4", style: TextStyle(fontFamily: "RobotoBlack", fontSize:17, color: Colors.red, fontWeight:FontWeight.bold)),
                  ),
                  Container(
                      padding: EdgeInsets.only(right: 10),
                    child: Text("bạn bè", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                  ),
                  ],
                ),

                
              ),
              Container(
                child: Text("sắp xếp", style: TextStyle(fontFamily: "Roboto", fontSize:20, color:Colors.blue)),
              )
            ],
          )
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 35,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Quỳnh Như", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              TextButton(child: Text("Hủy kết bạn", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.blue)),onPressed:(){}),
            ],
          ),
        ),
                  Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 35,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Bích Hằng", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                          
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              TextButton(child: Text("Hủy kết bạn", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.blue)),onPressed:(){}),
            ],
          ),
        ),
                Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 35,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Bo Nguyễn", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                          
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              TextButton(child: Text("Hủy kết bạn", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.blue)),onPressed:(){}),
            ],
          ),
        ),
                Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 35,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Long Phạm", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              TextButton(child: Text("Hủy kết bạn", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.blue)),onPressed:(){}),
            ],
          ),
        ),
      ]),
    );
    return Scaffold(
      body:Container(child: friend,));
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  var _colorlike = Colors.black;
  var _colorlike2 = Colors.black;
  var _colorlikeComment = Colors.black;
  var likenumber = 45;
  var likenumber2 = 5;
  bool _like = false;
  bool _likeComment = false;
  @override
  Widget build(BuildContext context) {
    Widget homefb = Container(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 32),
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                ListTile(
                  isThreeLine: false,
                  title: Text("Khả Hào",
                      style: TextStyle(fontFamily: 'RobotoBlack')),
                  subtitle: Text("Vừa xong · 🌍",
                      style: TextStyle(fontFamily: 'RobotoBlack')),
                  trailing: Icon(Icons.more_horiz),
                  leading: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage("images/avt.jpg"),
                            fit: BoxFit.cover)),
                    child: null,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  width: double.infinity,
                  child: Text(
                    "Đẹp trai không mọi người❤️❤️❤️",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
                    textAlign: TextAlign.left,
                  ),
                ),
                Image.asset(
                  'images/avt.jpg',
                  width: 600,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("👍❤️ $likenumber ",
                              style: TextStyle(fontSize: 14))),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "46 Comments",
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.black12,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _like = !_like;
                                      if (_like == true) {
                                        _colorlike = Colors.blue;
                                        likenumber++;
                                      } else {
                                        _colorlike = Colors.black;
                                        likenumber--;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.thumb_up_outlined),
                                  color: _colorlike,
                                ),
                                SizedBox(
                                  width: 0,
                                ),
                                Text(
                                  "Like",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: _colorlike,
                                      fontFamily: 'Roboto'),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 45,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.comment_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Comment",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Roboto'),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.send_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Send",
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'Roboto'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue[400],
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('images/avt.jpg'),
                      ),
                    )),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 230,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Crush của Hào",
                            style: TextStyle(fontFamily: 'RobotoBlack'),
                          ),
                          Text(
                            "Anh Hào đẹp trai quá❤️❤️❤️❤️",
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Roboto'),
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 230,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    setState(
                                      () {
                                        _likeComment = !_likeComment;
                                        if (_likeComment == true) {
                                          _colorlikeComment = Colors.blue;
                                          likenumber2++;
                                        } else {
                                          _colorlikeComment = Colors.black;
                                          likenumber2--;
                                        }
                                      },
                                    );
                                  },
                                );
                              },
                              child: Text(
                                "Like",
                                style: TextStyle(color: _colorlikeComment),
                              )),
                          Text(
                            "Reply",
                            style: TextStyle(fontFamily: 'Roboto'),
                          ),
                          Text("$likenumber2👍❤️"),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 7, left: 15),
                      width: 230,
                      child: Text(
                        "View 4 previous replies... ",
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget friend = Padding(
      padding: EdgeInsets.all(32),
      child: ListView(children: [
        Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10),
                child: SizedBox(
                width: 55,
                height: 32,//  // specific value
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),),
                  onPressed: () {},
                  color: Colors.grey[400],
                  textColor: Colors.black,
                  child: Text("Gợi ý",
                          style: TextStyle(fontSize: 14)),
                  ),
                )
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: SizedBox(
                width: 130,
                height: 32,//  // specific value
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const routebb()));
                    setState(() {});
                  },
                  color: Colors.grey[400],
                  textColor: Colors.black,
                  child: Text("Tất cả bạn bè",
                          style: TextStyle(fontSize: 14)),
                  ),
                )
              )
            ],
          )
        ),
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                    child: Text("Lời mời kết bạn", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                  ),
                  Container(
                      padding: EdgeInsets.only(right: 10),
                    child: Text("4", style: TextStyle(fontFamily: "RobotoBlack", fontSize:17, color: Colors.red, fontWeight:FontWeight.bold)),
                  ),
                  ],
                ),

                
              ),
              Container(
                child: Text("Xem tất cả", style: TextStyle(fontFamily: "Roboto", fontSize:20, color:Colors.blue)),
              )
            ],
          )
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Quỳnh Như", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,//  // specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.blue[800],
                                  textColor: Colors.white,
                                  child: Text("Chấp nhận",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )
                                  
                                ),

                                Container(
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,// specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.grey[400],
                                  textColor: Colors.black,
                                  child: Text("Xóa",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )

                                ),
                              ],

                            )
                          ),
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              Text("8 tuần", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
            ],
          ),
        ),
                  Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Bích Hằng", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,//  // specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.blue[800],
                                  textColor: Colors.white,
                                  child: Text("Chấp nhận",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )
                                  
                                ),

                                Container(
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,// specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.grey[400],
                                  textColor: Colors.black,
                                  child: Text("Xóa",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )

                                ),
                              ],

                            )
                          ),
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              Text("32 tuần", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
            ],
          ),
        ),
                Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Bo Nguyễn", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,//  // specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.blue[800],
                                  textColor: Colors.white,
                                  child: Text("Chấp nhận",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )
                                  
                                ),

                                Container(
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,// specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.grey[400],
                                  textColor: Colors.black,
                                  child: Text("Xóa",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )

                                ),
                              ],

                            )
                          ),
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              Text("1 tuần", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
            ],
          ),
        ),
                Container(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: Image.asset(
                            'images/lake.jpg',
                          ),
                        ),
                      ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("Long Phạm", style: TextStyle(fontFamily: "RobotoBlack", fontSize:20, color: Colors.black, fontWeight:FontWeight.bold)),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text("34 bạn chung" , style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,//  // specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.blue[800],
                                  textColor: Colors.white,
                                  child: Text("Chấp nhận",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )
                                  
                                ),

                                Container(
                                  child: SizedBox(
                                  width: 100,
                                  height: 32,// specific value
                                  child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),),
                                  onPressed: () {},
                                  color: Colors.grey[400],
                                  textColor: Colors.black,
                                  child: Text("Xóa",
                                    style: TextStyle(fontSize: 14)),
                                ),
                                )

                                ),
                              ],

                            )
                          ),
                        ],
                      ),
                    ) 
                  ],
                )
              ),
              Text("8 tuần", style: TextStyle(fontFamily: "RobotoBlack", color: Colors.grey)),
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
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoBlack')),
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
                          "https://scontent.fvca1-3.fna.fbcdn.net/v/t1.6435-9/246586518_3201985280083622_8496558111583378092_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=cHuf3FUKdzoAX9-mOeC&tn=mQZCbyvLWf7QHa4D&_nc_ht=scontent.fvca1-3.fna&oh=5b7fc22e393e742a8c4e1fccc223ae80&oe=61AF111E"),
                    ),
                    accountName: Text(
                      "Huỳnh Xuân Thịnh",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    accountEmail: Text(
                      " ",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                  leading: Icon(Icons.account_circle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileRoute()));
                  },
                ),
                ListTile(
                  title:
                      Text('Security', style: TextStyle(fontFamily: 'Roboto')),
                  leading: Icon(Icons.shield),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Security()));
                  },
                ),
                ListTile(
                  title: Text('Logout', style: TextStyle(fontFamily: 'Roboto')),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstRoute()));
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
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
            ),
            const Text(
              'Your username and password do not match',
              style: TextStyle(color: Colors.grey, fontFamily: 'Roboto'),
            ),
            const Text(
              'Please try again',
              style: TextStyle(color: Colors.grey, fontFamily: 'Roboto'),
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
            children: <Widget>[
              SizedBox(height: 50),
              const Text(
                'facebook',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 80,
                    fontFamily: 'RobotoBlack'),
              ),
              const Text(
                'Speak, friend, and enter',
                style: TextStyle(color: Colors.blue, fontFamily: 'Roboto'),
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 40,
          title: const Text(
            'Huỳnh Xuân Thịnh',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoBlack'),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Navigator.canPop(context)
              ? IconButton(
                  icon:
                      Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()));
                  },
                )
              : null,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_sharp),
              color: Colors.black,
            ),
          ],
        ),
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
                    fontWeight: FontWeight.w400,
                    fontFamily: 'RobotoBlack'),
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
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto'),
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
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto'),
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
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto'),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 5,
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
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'RobotoBlack'),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "1500",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Roboto'),
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
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'RobotoBlack'),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "200000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Roboto'),
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

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  _Security createState() => _Security();
}

class _Security extends State<Security> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bảo mật & quyền riêng tư',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoBlack'),
        ),
        backgroundColor: Colors.white,
        leading: Navigator.canPop(context)
            ? IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()));
                },
              )
            : null,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_sharp),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Container(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              color: Colors.grey[100],
              child: Text(
                'Tài khoản',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoBlack'),
              ),
            ),
            subtitle: Container(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Text(
                'Cập nhật thông tin để góp phần bảo vệ tài khoản.',
                style: TextStyle(
                    color: Colors.black, fontSize: 13, fontFamily: 'Roboto'),
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon:
                        Icon(Icons.account_circle_rounded, color: Colors.black),
                    label: Text(
                      "Thông tin cá nhân và tài khoản",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.shield_outlined, color: Colors.black),
                    label: Text(
                      "Mật khẩu và bảo mật",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.local_atm, color: Colors.black),
                    label: Text(
                      "Thanh toán",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Container(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              color: Colors.grey[100],
              child: Text(
                'Đối tượng và chế độ hiển thị',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoBlack'),
              ),
            ),
            subtitle: Container(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Text(
                'Kiểm soát ai có thể xem bài viết, tin và trang cá nhân của bạn.',
                style: TextStyle(
                    color: Colors.black, fontSize: 13, fontFamily: 'Roboto'),
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon:
                        Icon(Icons.account_circle_rounded, color: Colors.black),
                    label: Text(
                      "Thông tin trên trang cá nhân",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.my_library_books_outlined,
                        color: Colors.black),
                    label: Text(
                      "Bài viết",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.photo_album_rounded, color: Colors.black),
                    label: Text(
                      "Tin",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.person_off_outlined, color: Colors.black),
                    label: Text(
                      "Chặn",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Container(
              padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
              color: Colors.grey[100],
              child: Text(
                'Tiêu chuẩn cộng động và chính sách pháp lý',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoBlack'),
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.book_outlined, color: Colors.black),
                    label: Text(
                      "Điều khoản dịch vụ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.dns_outlined, color: Colors.black),
                    label: Text(
                      "Chính sách dữ liệu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.arrow_circle_up, color: Colors.black),
                    label: Text(
                      "Chính sách cookie",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: TextButton.icon(
                    icon: Icon(Icons.done_rounded, color: Colors.black),
                    label: Text(
                      "Tiêu chuẩn cộng đồng",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Roboto'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


