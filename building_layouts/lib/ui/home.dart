import 'package:flutter/material.dart';
import 'package:building_layouts/widgets/titleWidget.dart';
import 'package:building_layouts/widgets/iconWidget.dart';
import 'package:building_layouts/widgets/textSectionWidget.dart';

class MyHomePage extends StatelessWidget {
  final String _text = "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text("My Flutter bx Demo"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () { print("Hello World Clicked 1."); }),
            IconButton(icon: Icon(Icons.message), onPressed: () { print("Hello World Clicked 2."); }),
          ],
        ),
        body: ListView(
          children: [
            Container(
              child: Image.asset(
                'assets/images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.fill,
              ),
              padding: const EdgeInsets.all(10),
              color: Colors.purple[100],
            ),
            Container(
                height: 54.0,
                padding: EdgeInsets.all(12.0),
                child: Text('Data passed to this page:',
                    style: TextStyle(fontWeight: FontWeight.w700))),
            // titleSection,
            Titlewidget(),
            IconWidget(),
            TextSection(_text),
          ],
        ),
        drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(0),
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: Image.asset('assets/images/lake.jpg',width: 600,
                height: 240,
                fit: BoxFit.fill,),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
