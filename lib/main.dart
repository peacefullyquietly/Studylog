// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); // 클래스는 camel case로 표기

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // debug 배너 삭제
      title: 'First app',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 21, 37, 46), // 왜 죄다 const를 추가하라는겨
      appBar: AppBar(
        title: const Text('Sample', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 32, 54, 67),
        elevation: 0.0, // appbar 하단에 붕 뜬 효과,, 가 없는거같은데...?
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     print("Pressed menu button");
        //   },
        // ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print("shopping cart");
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("search");
            },
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // column내 모든 요소 좌측 정렬
          // mainAxisAlignment: MainAxisAlignment.center, // 세로축 중앙 정렬
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/와라와라.webp'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
              thickness: 2.0, // 선 굵기
              endIndent: 30.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'USERNAME',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'DAY or Project',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              'study +1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.hourglass_empty,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0, // 가로로 여백
                ),
                Text('Don\'t dwell on the past',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.trending_up,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0, // 가로로 여백
                ),
                Text('Life is unfair, get used to it',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.cloudy_snowing,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0, // 가로로 여백
                ),
                Text('Despite the forecast, live like it\'s spring',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: 40.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/움짤.gif'),
                radius: 35.0,
              ),
            ),
            // SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(70, 30, 0.0, 0.0),
              child: Column(
                children: [
                  Text('phone number : 010-1234-5678',
                      style: TextStyle(color: Colors.white)),
                  Text(
                    'email: abcd@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/wiggle.jpeg'),
              ),
              accountName: Text('wiggle'),
              accountEmail: Text('wigglewiggle@gmail.com'),
              onDetailsPressed: () {
                print('WTF');
              },
              decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text('HOME'),
              onTap: () {
                print("home clicked~");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text('Setting'),
              onTap: () {
                print("setting clicked~");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                  color: Colors.black), // ListTile 시작 점에 아이콘 배치
              title: Text('Chat'),
              onTap: () {
                print("chat clicked~");
              },
              trailing: Icon(Icons.add), // ListTile 끝나는 점에 아이콘 배치
            ),
          ],
        ),
      ),
    );
  }
}
