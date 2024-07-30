import 'package:flutter/material.dart';
import 'package:threads_clone/datasourse/datasourse_thread.dart';
import 'package:threads_clone/screen/widget/thread_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'images/threads.jpeg',
                  height: 35,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return ThreadPage(
                      threadRemoteDatasource().getThread()[index]);
                },
                childCount: threadRemoteDatasource().getThread().length,
              ),
            )
          ],
        ),
      ),
    );
  }
}