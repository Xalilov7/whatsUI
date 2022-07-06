import 'package:chat_ui/view/calls_view.dart';
import 'package:chat_ui/view/settings.dart';
import 'package:chat_ui/view/status_view.dart';
import 'package:flutter/material.dart';

import 'chatlist_view.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
   var fabIcon = Icons.message;
   late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this)
    ..addListener(() {
      setState(() {
        switch(tabController.index) {
          case 0:
            fabIcon = Icons.camera_alt_outlined;
            break;
          case 1 :
            fabIcon = Icons.chat;
            break;
          case 2 :
            fabIcon = Icons.camera_alt_outlined;
            break;
          case 3 :
            fabIcon = Icons.message;
            break;
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "WhatsApp",
          style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.white),
        ),
        actions: [
           PopupMenuButton(itemBuilder: (context) => [
           const  PopupMenuItem(child: Text("New Group")),
           const  PopupMenuItem(child: Text("New Group")),
             PopupMenuItem(child: InkWell(
               onTap: () {
                 Navigator.of(context);
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
               },
               child: Text("Getting"))),
           ])
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text("CHATS")),
            Tab(child: Text("STATUS")),
            Tab(child: Text("CALLS")),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
        Icon(Icons.camera_alt),
          ChatListView(),
          StatusView(),
         CallsView()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(fabIcon),
      ),
    );
  }
}
