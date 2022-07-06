import 'package:chat_ui/model/message/message_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.image, required this.name}) : super(key: key);
  final String image, name;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(widget.image),),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(widget.name),
                Text("online", style: TextStyle(
                  color: Colors.grey
                ),)
              ],
            )
          ],
        ),
        actions: [
          Icon(Icons.call),
          SizedBox(width: 20),
          Icon(Icons.video_call_outlined),

        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: ListView.builder(
                itemCount: MessageHelper.itemCount,
                itemBuilder: (context, index) {
              return Column(

              );
            }
            )
            ),
            Row(
              children: [
                Expanded(child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     color: Colors.grey.shade100
                   ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Expanded(child: Container(
                              child: Text("Message..", style: TextStyle(
                                color: Colors.grey.shade500
                              ), ),
                            ))
                            ,
                            Icon(Icons.attach_file),
                            SizedBox(
                              width: 5,
                            ),
                        Icon(Icons.camera_alt),
                            SizedBox(width: 5,)
                          ],
                        ),
                      )
                  ),

                )

                ),
               CircleAvatar(child: Icon(Icons.mic, size: 19, color: Colors.black),)
              ],

            )
          ],
        ),
      ),
    );
  }
}
