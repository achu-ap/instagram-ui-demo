import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Instagram(),
    ),
  );
}

class Instagram extends StatelessWidget {
  Instagram({super.key});
  List<Map<String, dynamic>> stories = [
    {"name": "charlie", "img": "assets/img.jpg", "post": "assets/post.jpg"},
    {"name": "charlie", "img": "assets/img.jpg", "post": "assets/post.jpg"},
    {"name": "charlie", "img": "assets/img.jpg", "post": "assets/post.jpg"},
    {"name": "charlie", "img": "assets/img.jpg", "post": "assets/post.jpg"},
    {"name": "charlie", "img": "assets/img.jpg", "post": "assets/post.jpg"},
    {"name": "charlie", "img": "assets/img.jpg", "post": "assets/post.jpg"},
    {"name": "charlie", "img": "assets/img.jpg", "post": "assets/post.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Instagram",
            style: TextStyle(
                fontFamily: "Lobster",
                fontSize: 25,
                fontWeight: FontWeight.w100),
          ),
          actions: [
            Icon(Icons.favorite_outline),
            SizedBox(
              width: 10,
            ),
            // Icon(Icons.message_outlined),
            Container(
              height: 30,
              width: 30,
              child: Image.asset("assets/msg.png"),
            ),
            SizedBox(
              width: 30,
            ),
          ]),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...stories.map(
                  (e) => Container(
                      padding: EdgeInsets.all(2),
                      margin: EdgeInsets.all(2),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage(e["img"])),
                          SizedBox(height: 5),
                          Text(
                            e["name"],
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              ...stories.map((e) => Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              CircleAvatar(
                                backgroundImage: AssetImage(e["img"]),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e["name"],
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                  Text("Suggested for you",
                                      style: TextStyle(
                                        fontSize: 10,
                                      )),
                                ],
                              ),
                              Expanded(child: Text("")),
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Follow",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),),),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.more_vert),
                            ],
                          ),
                        ),
                        Container(
                          height: 450,
                          width: double.infinity,
                          child: Image.asset(
                            e["post"],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.favorite_border_outlined),
                              SizedBox(width: 20),
                              Icon(Icons.mode_comment_outlined),
                              SizedBox(width: 20),
                              Icon(Icons.send_outlined),
                              SizedBox(width: 340),
                              Icon(Icons.turned_in_not_outlined)
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ))
        ],
      ),
      //    bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.search), label: "search"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.add_box_outlined), label: "add"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.movie_outlined), label: "reels"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person), label: "profile"),
      //   ],
      // ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.movie_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
    ));
  }
}
