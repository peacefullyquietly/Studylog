// IndividualPage.dart

import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  // 이게 없어서 안됐구나
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('chat Page'),
      // ),
      backgroundColor: Color.fromARGB(255, 224, 221, 221),
      body: Center(
        child: Text(
          'This is the chat Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
