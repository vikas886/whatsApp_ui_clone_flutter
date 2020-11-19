import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat_model.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:dummyData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(height: 10,),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[index].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dummyData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(dummyData[index].time,style: TextStyle(color: Colors.grey,fontSize: 14),),
                ],
              ),
              subtitle:Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(dummyData[index].message,style: TextStyle(fontSize: 15,color: Colors.grey),),
              ),
            )
          ],
        );
      },
    );
  }
}
