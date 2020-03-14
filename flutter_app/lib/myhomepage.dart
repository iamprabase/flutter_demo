import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(child: Text("My New Application")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter+=1;
          });;
        },
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/minions.jpg'),
                radius: 90,
              ),
            ),
            Divider(
              height: 20,
              color: Colors.yellow,
            ),
            Text(
              'Name',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              'Prabesh Bikram Shahi',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              'Designation',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              'Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.yellow,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "find.prabase@gmail.com",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              wordSpacing: 2,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.yellow,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "+977-9862023856",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              wordSpacing: 2,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Text(
                  "Level",
                  style: TextStyle(
                    letterSpacing: 10,
                    fontWeight: FontWeight.w900,
                    fontSize: 20
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    textColor: Colors.white,
                    onPressed: () => setState(() {
                      counter = 0 ;
                    }),
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Reset Level",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
