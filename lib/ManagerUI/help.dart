import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  String help = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/modify about background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(
                        "The Help",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Icon(
                      Icons.help,
                      size: 30,
                      color: Color(0xFFFD372A),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: 650,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Color(0xFF4F4F4F),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Write Here in What You Need Help',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              onChanged: (text) {
                                setState(() {
                                  help = text;
                                });
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                hintText: '.....',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 70.0, horizontal: 6.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFD372A),
                              ),
                              onPressed: null,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Save'),
                                  Icon(Icons.send, color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 225.0),
                            child: Text(
                              'To Contact Us : ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          SizedBox(height: 10.0),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
