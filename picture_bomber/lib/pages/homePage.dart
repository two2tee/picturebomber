import 'package:flutter/material.dart';
import 'package:picture_bomber/service/picturebomberservice.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textFieldController = TextEditingController();

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: new Image.asset('assets/images/bomb.png'),
                    onPressed: () async {
                      var service = new PictureBomberService();
                      print(await service.bombEmail(textFieldController.text));
                      },
                    iconSize: 150,
                  ),
                  TextField(
                    controller: textFieldController,
                    decoration: InputDecoration(labelText: 'Enter an email'),
                  )
                ])));
  }
}
