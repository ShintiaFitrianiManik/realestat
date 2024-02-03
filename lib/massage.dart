import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';

void main() => runApp(const message());

class message extends StatelessWidget {
  const message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tawk'),
        ),
        body: Tawk(
          directChatLink:
              'https://tawk.to/chat/64a02ef294cf5d49dc60e800/1h48reptn',
          visitor: TawkVisitor(
            name: 'jezt',
            email: 'dewaarik20@gmail.com',
          ),
        ),
      ),
    );
  }
}
