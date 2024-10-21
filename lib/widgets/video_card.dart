// widgets/video_card.dart
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final bool isShorts;
  final String title;
  final String channelName;
  final String views;
  final String time;

  VideoCard({
    this.isShorts = false,
    required this.title,
    required this.channelName,
    required this.views,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: isShorts ? 150 : null, 
      child: Column(
        children: [
          Container(
            
            color: Colors.grey[300],
            height: isShorts ? 106 : 100, 
            child: Center(
              child: Icon(Icons.play_circle_outline, size: 40),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (!isShorts) ...[
            Text(channelName),
            Text('$views • $time'),
          ],
        ],
      ),
    );
  }
}


class VideoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VideoCard(
          isShorts: true,
          title: "Quick Cooking Tips",
          channelName: "Chef Quick",
          views: "1.2M views",
          time: "1 day ago",
        ),
        VideoCard(
          isShorts: true,
          title: "Epic Dance Moves",
          channelName: "DanceVibes",
          views: "500K views",
          time: "3 days ago",
        ),
        VideoCard(
          isShorts: false,
          title: "The Ultimate Guide to Flutter",
          channelName: "Flutter Dev",
          views: "200K views",
          time: "2 weeks ago",
        ),
        VideoCard(
          isShorts: false,
          title: "10 Tips for Better Photography",
          channelName: "Photo Master",
          views: "1.5M views",
          time: "1 month ago",
        ),
        
      ],
    );
  }
}
