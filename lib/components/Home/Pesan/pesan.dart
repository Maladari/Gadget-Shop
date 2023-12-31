import 'package:flutter/material.dart';
import 'page_passing.dart';

class ParsingPage extends StatefulWidget {
  const ParsingPage({super.key});

  @override
  State<ParsingPage> createState() => _ParsingPageState();
}

class _ParsingPageState extends State<ParsingPage> {
  final TextEditingController _Controller = TextEditingController();
  void _sendTextValue(String value) {
    setState(() {
      String text = value;
    });
  }

  void _clearText() {
    _Controller.clear();
    setState(() {});
  }

  void _sendOtherScreen(BuildContext context) {
    String textSend = _Controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PassingPage(text: textSend)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1DB9C3),
        title: Text('Parsing'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _Controller,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: 'Kirim Pesan',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              onChanged: (String value) {
                _sendTextValue(value);
              },
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF1DB9C3))),
                onPressed: () {
                  _sendOtherScreen(context);
                  _clearText();
                },
                child: Text('Send Data'))
          ],
        ),
      ),
    );
  }
}
