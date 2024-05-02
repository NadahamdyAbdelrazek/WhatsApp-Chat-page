import 'package:flutter/material.dart';
import 'package:untitled/home/widget/chat_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              )),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/person.jpg"),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Person",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Uri.https("https://flutter.dev");
                },
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 30,
                )),
            SizedBox(
              width: 30,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ChatWidget(
                imagepath: "assets/images/person1.jpg",
                text: "This is My First Message",
                isSender: false,
              ),
              ChatWidget(
                imagepath: "assets/images/person2.jpg",
                text: "This is My Seconed Message",
                isSender: true,
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.white,
                            ),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file_outlined,
                                color: Colors.white,
                              )),
                          labelText: "Type a Message",
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.transparent,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black,
                          border: Border.all(color: Colors.white)),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
