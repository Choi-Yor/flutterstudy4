import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오늘도 오구오구'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('good shopping');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('good search');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Doobong'),
              accountEmail: Text('2hdistance@naver.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/doobong1.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/mekju1.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              onDetailsPressed: () {
                print('good detail');
              },
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.add),
              onTap: () {
                print('home clicked');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              trailing: Icon(Icons.add),
              onTap: () {
                print('setting clicked');
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Q&A'),
              trailing: Icon(Icons.add),
              onTap: () {
                print('Q&A clicked');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: TextButton(
          child: Text(
            '오구오구',
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('냐옹냐옹'),
            ));
          },
        ),
      ),
    );
  }
}
