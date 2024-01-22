import 'package:flutter/material.dart';
import 'package:flutter_application_studylog/profile.dart';
import 'package:flutter_application_studylog/mylog.dart';
import 'package:flutter_application_studylog/grouplog.dart';
import 'package:flutter_application_studylog/chatpage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      //_title 변수 불러오기..?
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    IndividualPage(),
    GroupPage(),
    ChatPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text(
          //   'Studylog Sample',
          //   style: TextStyle(color: Colors.white),
          // ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const profile()),
              );
            },
            icon: Icon(
              Icons.account_circle,
              size: 40.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 224, 221, 221),
        ),
        backgroundColor: const Color.fromARGB(255, 224, 221, 221),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 81, 79, 79),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Individual',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Group',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          onTap: _onItemTapped,
        ),
        endDrawer: Drawer(
            backgroundColor: Color.fromARGB(255, 224, 221, 221),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: ListView(
                children: [
                  Text("  Add a Heading",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 10.0),
                  Container(
                    color: Color.fromRGBO(193, 192, 192, 1),
                    width: 80,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        Center(
                          child: Icon(
                            Icons.image,
                            size: 90.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 50),
                    child: Container(
                      height: 200,
                      // color: Color(0xffeeeeee),
                      padding: EdgeInsets.all(10.0),
                      child: new ConstrainedBox(
                        // 최대 높이에 제약을 주는 역할
                        constraints: BoxConstraints(
                          maxHeight: 200.0,
                        ),
                        // 스크롤바를 표시하는 데 사용
                        child: new Scrollbar(
                          // 자식 위젯을 스크롤 할 수 있게 만듦
                          child: new SingleChildScrollView(
                            scrollDirection: Axis
                                .vertical, // SingleChildScrollView 위젯이 수직방향으로 스크롤 가능하게 만듦
                            // 새로운 텍스트가 추가될 때 자동으로 맨 아래로 스크롤되어 보이는 효과.
                            reverse: true,
                            child: SizedBox(
                              height: 190.0,
                              child: new TextField(
                                // 최대 100줄 입력 가능
                                maxLines: 100,
                                decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Add your text here',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // TextField(
                    //     // contentPadding: EdgeInsets.symmetric(vertical: 40),
                    //     decoration: const InputDecoration(
                    //   border: InputBorder.none,
                    //   hintText: "To edit this text, .... ",
                    //   contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
                    // )),
                  ),
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.ios_share),
                    ),
                  )
                ],
              ),
            )));
  }
}
