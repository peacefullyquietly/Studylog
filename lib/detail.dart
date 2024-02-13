import 'package:flutter/material.dart';
import 'profile.dart';

void main() => runApp(DetailApp());

class DetailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.account_circle, size: 40),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.menu, size: 40),
                onPressed: () {
                  // TODO: Menu 아이콘을 눌렀을 때의 동작 추가
                },
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                '      Add a heading',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: Container(
                  color: Color.fromRGBO(180, 180, 180, 1.0),
                  width: 300,
                  height: 300,
                  margin: const EdgeInsets.all(5.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.photo_library,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      '   To edit this text, select the text box and double click.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(128, 128, 128, 1.0),
      child: Container(
        height: 70,
        child: TabBar(
          indicator: BoxDecoration(),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 0,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 17, fontFamilyFallback: ['Yanolja']),
          tabs: [
            Tab(
              icon: Icon(
                Icons.search,
                size: 20,
              ),
              text: 'Search',
            ),
            Tab(
              icon: Icon(
                Icons.tune,
                size: 20,
              ),
              text: 'Filter',
            ),
          ],
        ),
      ),
    );
  }
}
