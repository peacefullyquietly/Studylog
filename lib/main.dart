import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.account_circle, size: 40),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Double click to edit',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                '137 results found',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Another text field',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Add a smaller heading to give this section a title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
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
              icon: Icon(Icons.favorite, size: 20),
              text: 'Saved',
            ),
            Tab(
              icon: Icon(
                Icons.tune,
                size: 20,
              ),
              text: 'Filter',
            )
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 120,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Text(
                        '[Name]',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.white,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 10),
                          Text('Personal Information'),
                        ],
                      ),
                      Divider(), // 첫 번째 줄과 두 번째 줄을 구별하는 Divider
                      Row(
                        children: [
                          Icon(Icons.notifications),
                          SizedBox(width: 10),
                          Text('Notifications'),
                        ],
                      ),
                      Divider(), // 두 번째 줄과 세 번째 줄을 구별하는 Divider
                      Row(
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 10),
                          Text('Wishlist'),
                        ],
                      ),
                      Divider(), // 세 번째 줄과 네 번째 줄을 구별하는 Divider
                      Row(
                        children: [
                          Icon(Icons.save),
                          SizedBox(width: 10),
                          Text('Saved'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 40,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
