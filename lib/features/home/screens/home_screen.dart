import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/features/auth/controllers/auth_controller.dart';
import 'package:reddit_clone/features/home/screens/drawers/community_list_drawer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final user = ref.watch(userProvider)!;

    return Scaffold(
      drawer: CommunityDrawer(),
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: false,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => displayDrawer(context),
            );
          }
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.blueGrey[600],
              child: Text(
                'A',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
