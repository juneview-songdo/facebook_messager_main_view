import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../chat_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                "https://i.insider.com/57bf2f13956abc1d008b45f9?width=957&format=jpeg",
                              ),
                            ),
                          ),
                          Positioned(
                              right: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    "+9",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Text(
                        "Chats",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25)),
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        icon: Icon(Icons.search)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.add, size: 24, color: Colors.black),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: NetworkImage(
                      "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/0/0a/Nick_Fury_Textless_AoU_Poster.jpg/revision/latest/top-crop/width/360/height/360?cb=20161119163035",
                    ),
                  ).padding(all: 12),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ChatItemView(
                  profileUrl:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                  timeago: "2hrs ",
                  userMessage: "Hello joan is everything ok",
                  username: "Crhus",
                  seen: true,
                ),
                ChatItemView(
                  profileUrl:
                      "https://ae01.alicdn.com/kf/HTB19Z8zMpXXXXaFaXXXq6xXFXXXf/Marvel-Avengers-Characters-Captain-America-Thor-Action-Figure-Figma-Models-Movie-Fan-Collection-Adult-Gift-Plastic.jpg",
                  timeago: "5hrs ",
                  userMessage: "Love overloads",
                  username: "Louji",
                  seen: false,
                ),
                ChatItemView(
                  profileUrl:
                  "https://images.unsplash.com/photo-1598211686290-a8ef209d87c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3334&q=80",
                  timeago: "2 days ",
                  userMessage: "Hello joan is everything ok",
                  username: "Uganius",
                  seen: true,
                ),
                ChatItemView(
                  profileUrl:
                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
                  timeago: "2 days ",
                  userMessage: "Hello joan is everything ok",
                  username: "Crhus",
                  seen: false,
                ),
                ChatItemView(
                  profileUrl:
                  "https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2247&q=80",
                  timeago: "2 days ",
                  userMessage: "Hello joan is everything ok",
                  username: "Johanna",
                  seen: true,
                ),
                ChatItemView(
                  profileUrl:
                  "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80",
                  timeago: "24 days ",
                  userMessage: "Hello joan is everything ok",
                  username: "rion",
                  seen: false,
                ),
                ChatItemView(
                  profileUrl:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                  timeago: "22 days ",
                  userMessage: "Hello joan is everything ok",
                  username: "louji",
                  seen: false,
                ),
                ChatItemView(
                  profileUrl:
                      "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                  timeago: "24 days ",
                  userMessage: "Hello joan is everything ok",
                  username: "Crhus",
                  seen: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
