import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey.shade500,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
         icon: Icon(Icons.message),
          title: Text("Chats" ),
          ),   BottomNavigationBarItem(
         icon: Icon(Icons.group,color: Colors.amberAccent,),
          title: Text("Groups" , style: TextStyle(color: Colors.purpleAccent),),
          ),   BottomNavigationBarItem(
         icon: Icon(Icons.account_circle, color: Colors.lightGreenAccent,),
          title: Text("Profile", style: TextStyle(color: Colors.indigo),),
          ),
        ],



      ),
      body: ChatPage(),
    );
  }
}
