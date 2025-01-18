import 'package:flutter/material.dart';
import '../widgets/custom_post_item.dart';
import '../widgets/story_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2196f3),
          title: const Text(
            "Home Screen",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SizedBox(
                height: 130,
                child: ListView.separated(
                  padding: const EdgeInsets.all(8.0),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const StoryItem(),
                  itemCount: 20,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 5),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const CustomPostItem(),
                childCount: 20,
              ),
            ),
          ],
        ));
  }
}
