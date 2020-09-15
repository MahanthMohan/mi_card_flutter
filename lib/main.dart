import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(mi_card_flutter());
}

class mi_card_flutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigoAccent[400],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage("images/mahanth.png"),
            ),
            Text(
              "Mahanth",
              style: TextStyle(
                fontFamily: "JetBrains Mono",
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Developer",
              style: TextStyle(
                fontFamily: "JetBrains Mono",
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Colors.white,
                )),
            InkWell(
              onTap: () {
                launch("https://github.com/MahanthMohan");
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.code,
                    color: Colors.black,
                  ),
                  title: Text(
                    "GitHub Profile",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontFamily: "JetBrains Mono",
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launch("https://www.linkedin.com/in/mahanth-mohan-449902194/");
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.business,
                    color: Colors.black,
                  ),
                  title: Text(
                    "LinkedIn Profile",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontFamily: "JetBrains Mono",
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launch(
                    "https://mail.google.com/mail/u/0/#inbox?compose=CllgCJZbjmrwQfWTnsqTlgbQHtQdFNFwzcBKkMfSvrXxwvkkTHVBdFwNMQSXRPtXXXtTQksfwvq");
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Email Address",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontFamily: "JetBrains Mono",
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
