import 'package:flutter/material.dart';
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Icon(Icons.close,color: Colors.black,),
        title: Text('New Post'),
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Divider(height: 3),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('images/profile.jpeg'),),
              title:Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Alires'),
              ),
              subtitle:TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Start a thread...',
                  hintStyle:TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  )
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Anyone can replay",
                  style:TextStyle(
                    fontSize: 18,
                    color: Colors.grey
                  ),),
                  Text("Post",
                    style:TextStyle(
                        fontSize: 18,
                        color: Colors.blue
                    ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
