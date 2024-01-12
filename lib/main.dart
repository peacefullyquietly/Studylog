// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sample 학습용',
      // theme: ThemeData(
      //   primarySwatch: Colors.blueGrey,
      // ),
      home: MainPage(),
    );
  }
}

// 으악
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sample',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 32, 54, 67),
        // 앱 바 우측의 아이콘 두개
        actions: [
          IconButton(
            onPressed: () {
              print('shopping cart');
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
              onPressed: () {
                print('search~');
              },
              icon: Icon(Icons.search))
        ],
      ),
      backgroundColor:
          Color.fromARGB(255, 21, 37, 46), // background 컬러를 여기에 저장하는구나...
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // column 내 모든 요소 좌측 정렬
          // mainAxisAlignment: MainAxisAlignment.start,      // 축 정렬
          children: [
            // 이 부분 다시보기
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage(
                  'assets/와라와라.webp',
                ),
              ),
            ),
            // + SnackBar
            Container(
              // alignment: Alignment(0.7, 0.0),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    // Icon이 아닐 경우 .icon빼고
                    onPressed: () {
                      toastButton();
                      // Respond to button press
                    },
                    // child: Text('test용 박스'),
                    icon:
                        Icon(Icons.add, size: 18), // icon이 아닐 경우 text박스 등으로 사용
                    label: Text("CONTAINED BUTTON"), // icon 내부 메시지
                  ),
                  FloatingActionButton.small(
                    child: Icon(Icons.add),
                    backgroundColor: Colors.white,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Snackbar test message')));
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 60.0,
              endIndent: 30.0, // 끝나는 지점으로부터 거리
              thickness: 3.0, // 선 굵기
            ),
            Text('NAME', style: TextStyle(color: Colors.white)),
            Text(
              'USERNAME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold, // 글자 굵게
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('DAY or Project', style: TextStyle(color: Colors.white)),
            Text(
              'study +1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold, // 글자 굵게
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('Don\'t dwell on the past',
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('Life is unfair, get used to it',
                    style: TextStyle(color: Colors.white))
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('Despite the forecast, live like it\'s spring',
                    style: TextStyle(color: Colors.white))
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/움짤.gif'),
                radius: 35.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 15.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'phone number: 010-1234-5678',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'email: abcd@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/wiggle.jpeg'),
              ),
              accountName: Text('Wiggle'),
              accountEmail: Text('wigglewiggle@gmail.com'),
              onDetailsPressed: () {
                print('WTF');
              },
              // 이 부분을 빠뜨렸구나ㅏ,,,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
              // 여기까지 다시 보기
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'HOME',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.add),
              onTap: () {
                print('home pressed the button');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                'Setting',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.add),
              onTap: () {
                print('setting pressed the button');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.chat_bubble,
                color: Colors.black,
              ),
              title: Text(
                'Chat',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.add),
              onTap: () {
                print('chat pressed the button');
              },
            ),
          ],
        ),
      ),
    );
  }
}

void toastButton() {
  Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT, // toastmessage 지속시간
      gravity: ToastGravity.CENTER, // toastmessage 띄울 위치
      timeInSecForIosWeb: 1, // 얘는 뭐야
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
//  함수니까 마지막에 세미콜론
}
