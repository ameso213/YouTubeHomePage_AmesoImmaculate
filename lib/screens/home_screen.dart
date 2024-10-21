// screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/video_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontal Category List
            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildCategory('All'),
                        _buildCategory('New to you'),
                        _buildCategory('Movies'),
                        _buildCategory('Gaming'),
                        _buildCategory('Trending'),
                        _buildCategory('Playlist'),
                        _buildCategory('Live'),
                        _buildCategory('Got talent'),
                        _buildCategory('Wildlife'),
                        _buildCategory('Sketch comedy'),
                        _buildCategory('Recently uploaded'),
                        _buildCategory('Bodyweight exercise'),
                        _buildCategory('Freestyle Swimming'),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.grey), // More icon
                ],
              ),
            ),

            // Regular Videos Section (Vertically Scrollable)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Videos',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(), // Disables nested scrolling
              shrinkWrap: true, // Allows it to take only necessary space
              itemCount: 4, // Number of videos
              itemBuilder: (context, index) {
                return VideoCard(
                  isShorts: false,
                  title: "Video Title $index", // Sample title
                  channelName: "Channel Name $index", // Sample channel name
                  views: "${(index + 1) * 100}K views", // Sample views
                  time: "${(index + 1)} days ago", // Sample time
                );
              },
            ),

            // Shorts Section (Horizontally Scrollable)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Shorts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8, // Number of shorts
                itemBuilder: (context, index) {
                  return VideoCard(
                    isShorts: true,
                    title: "Short Title $index", // Sample title
                    channelName: "Short Channel $index", // Sample channel name
                    views: "${(index + 1) * 50}K views", // Sample views
                    time: "${(index + 1)} hours ago", // Sample time
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(category),
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
      ),
    );
  }
}
