import 'package:flutter/material.dart';

import '../modelPage/model.dart';
import 'editPage.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  CVDetails cvDetails = CVDetails(
    fullName: "Adomi Oseremen",
    slackName: "Adomi Oseremen",
    githubHandle: "osigray",
    personalBio: "I'm a flutter Dev",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        title: Text('My Details'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Full Name:",
                  style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                    " ${cvDetails.fullName}",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[700]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Slack Username:",
                  style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                    " ${cvDetails.slackName}",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[700]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Github Handle:",
                  style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                    " ${cvDetails.githubHandle}",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[700]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Personal Bio:",
                  style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 250,
                  child: Text(
                    " ${cvDetails.personalBio}",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[700]),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blueGrey[400]),
                  onPressed: () async {
                    final updatedDetails = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => editPage(cvDetails: cvDetails),
                      ),
                    );

                    if (updatedDetails != null) {
                      setState(() {
                        cvDetails.update(updatedDetails);
                      });
                    }
                  },
                  child: Text('Edit Details'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
