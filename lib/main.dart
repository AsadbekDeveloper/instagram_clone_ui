import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.chat_bubble_outline_outlined),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return StoryItem();
                }),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: ((context, index) {
                  return PostItem();
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.circle),
          label: 'home',
        ),
      ]),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Text('andrewprice'),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('cassandracalin'),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.heart_broken_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.chat_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.telegram,
                    size: 30,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 6,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.circle,
                    size: 6,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.download,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.bookmark_outline,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('69 likes'),
              RichText(
                text: TextSpan(
                    text: 'best.uidesign',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Do you need a UI/UX designer, Do you need a UI/UX designer?',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: '@uiux.argentina',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ]),
              )
            ],
          ),
        )
      ]),
    );
  }
}
