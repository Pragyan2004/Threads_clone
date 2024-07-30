import 'package:flutter/material.dart';
import 'package:threads_clone/screen/homepage.dart';
import 'package:threads_clone/screen/profile.dart';
import 'package:threads_clone/screen/widget/earch.dart';
import 'package:threads_clone/screen/widget/post.dart';
class Navi extends StatefulWidget {
  Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  @override
  int index=0;
  List page=[
    HomePage(),
    SearchScreen(),
    PostScreen(),
    HomePage(),
    ProfileScreen(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
      color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  index=0;
                });
              },
                child: Icon(
                  Icons.home,
                  size: 20,
                  color: index==0 ? Colors.black:Colors.grey,
                )
            ),
            GestureDetector(
                onTap: (){
                  setState(() {
                    index=1;
                  });
                },
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: index==1 ? Colors.black:Colors.grey,
                )
            ),
            GestureDetector(
                onTap: (){
                  setState(() {
                    index=2;
                  });
                },
                child: Icon(
                  Icons.edit_square,
                  size: 20,
                  color: index==2 ? Colors.black:Colors.grey,
                )
            ),
            GestureDetector(
                onTap: (){
                  setState(() {
                    index=3;
                  });
                },
                child: Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: index==3 ? Colors.black:Colors.grey,
                )
            ),
            GestureDetector(
                onTap: (){
                  setState(() {
                    index=4;
                  });
                },
                child: Icon(
                  Icons.person_2_outlined,
                  size: 20,
                  color: index==4 ? Colors.black:Colors.grey,
                )
            ),
          ],
        ),
      ),
      body: page[index],
    );
  }
}
