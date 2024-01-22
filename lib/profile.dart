import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading 위치에 뒤로가기 버튼 삭제
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 30.0,
              )),
          SizedBox(
            width: 20.0,
          )
        ],
        backgroundColor: Color.fromARGB(255, 224, 221, 221),
      ),
      backgroundColor: Color.fromARGB(255, 224, 221, 221),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Column(
                children: [
                  Text(
                    "[Name]",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text("Location"),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            // 구분을 위한 공백
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    title: Text("Personal Information",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    onTap: () {
                      print('pressed the button');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    title: Text("Notifications",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    onTap: () {
                      print('chat pressed the button');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    title: Text("Wishlist",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    onTap: () {
                      print('chat pressed the button');
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    title: Text("Saved",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    onTap: () {
                      print('chat pressed the button');
                    },
                  ),
                ],
              ),
            ),
            // Coumn 목록 끝
            SizedBox(height: 90.0),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
                size: 30.0,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                print('chat pressed the button');
              },
            )
          ],
        ),
      ),
    );
  }
}
