import 'package:flutter/material.dart';
import 'package:threads_clone/datasourse/datasourse_thread.dart';
import 'package:threads_clone/screen/widget/thread_widget.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin{
  TabController? _controller;
  @override
  void initState(){
    super.initState();
    _controller=TabController(length: 2, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.language, size: 30),
                    Icon(Icons.menu, size: 30,)
                  ],
                ),
              ),
              SizedBox(height: 15),
              Head('Flutter Dev', 'Alizea', 'FlutterSkills66', 'profile.jpeg'),
              SizedBox(height: 8),
              Followers(),
              Container(
                height: 60,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                  indicatorColor: Colors.black,
                  controller: _controller,
                  tabs: [
                    Tab(text: 'Threads'),
                    Tab(text:'Replies'),
                  ],
                ),
              ),
              SizedBox(
                  height: 500,
                child: TabBarView(
                  controller: _controller,
                  children: [
                    Column(
                      children: [
                        ThreadPage(threadRemoteDatasource().getThread()[0]),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 30),
                      child: Text('You havent replied any thread yet',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}

class Followers extends StatelessWidget {
  const Followers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 40,
            child: Stack(
              children: [
                CircleAvatar(radius: 12,backgroundImage:AssetImage('images/p1.jpg'),),
                Positioned(
                    left: 5,
                    child: CircleAvatar(radius: 12,backgroundImage:AssetImage('images/p3.jpg'),)),
              ],
            ),
          ),
          Text('8',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.grey
            ),),
          SizedBox(width: 5),
          Text("followers",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.grey
            ),)
        ],
      ),
    );
  }
}

class Head extends StatelessWidget {
  String Name;
  String UserName;
  String Bio;
  String image;
  Head(this.Name,this.UserName,this.Bio,this.image,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text(UserName,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
              SizedBox(height: 5),
              Text(Bio,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage('images/${image}'),
            radius: 30,
          )
        ],
      ),
    );
  }
}
