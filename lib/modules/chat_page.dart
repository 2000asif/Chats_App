/*import 'package:cha_app/componeents/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children:<Widget> [
                      Text("chat",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8,top: 2, bottom: 2,),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink[50],
                        ),
                        color: Colors.pink[50],
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.add,color: Colors.pink,size: 20,),
                            SizedBox(width: 2,),


                            Text("New",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)

                          ],
                        ),
                      )
                    ],
                  ),

                ),
            ),
           Padding(
               padding: EdgeInsets.all(16),
             child: TextField(
               decoration: InputDecoration(
                 hintText: "Search.....",
                 hintStyle: TextStyle(color: Colors.grey.shade400,),
                 prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                 filled: true,
                 fillColor: Colors.grey.shade100,
                 contentPadding: EdgeInsets.all(8),
                 enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                     borderSide: BorderSide(
                       color: Colors.grey.shade100,
                     )
                 ),

               ),


             ),
           ),
          ListView.builder(
             itemCount: 10,
             shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (contex, index){
               return ChatUserList(image: '',

               );


            },
           ),
         
            
           /* TextField(
              decoration: InputDecoration(
                hintText: "Search.....",
                hintStyle: TextStyle(color: Colors.grey.shade400,),
                prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.grey.shade100,
                  )
                ),

              ),


            ),*/
          ],
        ),
      ),
    );
  }
}*/
import 'package:cha_app/components/chat.dart';
import 'package:cha_app/models/chat_users.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Abdul Kader", style: TextStyle(color: Colors.lightGreenAccent) ,secondaryText: "Hey Baby Kemon acho tomi ajke ar jowa hoitache na next time jabo ", image: "images/aa.jpg", time: "Now"),
    ChatUsers(text: "Anam Hosen", secondaryText: " Caliwe jow brother ak din sob sombob ", image: "images/userImage2.jpeg", time: "Today", style: TextStyle(color: Colors.green), ),
    ChatUsers(text: "Shwon Hosen", secondaryText: "Hey mama How are you?", image: "images/userImage3.jpeg", time: "22 mar",style: TextStyle(color: Colors.red)),
    ChatUsers(text: "Surov Palu", secondaryText: "Kalke clge ai tore ami kaichi ", image: "images/userImage4.jpeg", time: " 24 April", style: TextStyle(color: Colors.red)),
    ChatUsers(text: "Rabby Alom", secondaryText: "Thanks you dear", image: "images/userImage5.jpeg", time: "22 Mar",style: TextStyle(color: Colors.red)),
    ChatUsers(text: "Rafat Al Hosain", secondaryText: "This is  awesome", image: "images/userImage6.jpeg", time: " 5 April",style: TextStyle(color: Colors.red)),
    ChatUsers(text: "Dewan Rana", secondaryText: "Can you pleas share the link in git?", image: "images/userImage7.jpeg", time: "29 April",style: TextStyle(color: Colors.red)),
    ChatUsers(text: "Sakil Ahamed", secondaryText: "Can you call me?", image: "images/userImage8.jpeg", time: "34 April",style: TextStyle(color: Colors.red)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.pink,size: 20,),
                          SizedBox(width: 2,),
                          Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

