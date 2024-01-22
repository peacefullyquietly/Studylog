// IndividualPage.dart

import 'package:flutter/material.dart';

class IndividualPage extends StatelessWidget {
  // 이게 없어서 안됐구나
  const IndividualPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 224, 221, 221),
      // ),
      backgroundColor: Color.fromARGB(255, 224, 221, 221),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
        child: Column(
          children: [
            Center(
              child: TextField(
                decoration: InputDecoration(
                    // labelText: 'Search',
                    border: OutlineInputBorder(),
                    hintText: "Double click to edit",

                    // 좌측에 돋보기 모양 아이콘
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
