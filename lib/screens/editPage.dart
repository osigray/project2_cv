import 'package:flutter/material.dart';

import '../modelPage/model.dart';

class editPage extends StatefulWidget {
  final CVDetails cvDetails;

  editPage({required this.cvDetails});

  @override
  _editPageState createState() => _editPageState();
}

class _editPageState extends State<editPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackNameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController personalBioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.cvDetails.fullName;
    slackNameController.text = widget.cvDetails.slackName;
    githubHandleController.text = widget.cvDetails.githubHandle;
    personalBioController.text = widget.cvDetails.personalBio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[500],
        title: Text('Edit Your Details'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: fullNameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle:
                        TextStyle(color: Colors.blueGrey[500], fontSize: 23),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 237, 179, 175),
                    )),
                    fillColor: Color.fromARGB(33, 42, 41, 41),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: slackNameController,
                  decoration: InputDecoration(
                    labelText: 'SlackName',
                    labelStyle:
                        TextStyle(color: Colors.blueGrey[500], fontSize: 23),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 237, 179, 175),
                    )),
                    fillColor: Color.fromARGB(33, 42, 41, 41),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: githubHandleController,
                  decoration: InputDecoration(
                    labelText: 'GitHub Handle',
                    labelStyle:
                        TextStyle(color: Colors.blueGrey[500], fontSize: 23),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 237, 179, 175),
                    )),
                    fillColor: Color.fromARGB(33, 42, 41, 41),
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextField(
                    controller: personalBioController,
                    decoration: InputDecoration(
                      labelText: 'Personal Bio',
                      labelStyle:
                          TextStyle(color: Colors.blueGrey[500], fontSize: 23),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.blueGrey[500]),
                    onPressed: () {
                      final updatedDetails = {
                        'fullName': fullNameController.text,
                        'slackName': slackNameController.text,
                        'githubHandle': githubHandleController.text,
                        'personalBio': personalBioController.text,
                      };
                      Navigator.pop(context, updatedDetails);
                    },
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
