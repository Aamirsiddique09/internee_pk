import 'package:flutter/material.dart';
import 'package:interneepk/widget/All_course_w/videos_w.dart';


class CourseDetailScreen extends StatefulWidget {
  final String title;
  final String name;
  final String des;
  const CourseDetailScreen({super.key, required this.title, required this.name, required this.des});

  @override

  // ignore: library_private_types_in_public_api
  _CourseDetailScreenState createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
   final List<Map<String, dynamic>> playlistItems = [
    {
      'icon': Icons.play_circle_outline,
      'title': 'Introduction',
      'subtitle': 'Topic description ...',
      'color': Colors.greenAccent,
    },
    {
      'icon': Icons.lock,
      'title': 'Lesson 1',
      'subtitle': 'Topic description ...',
      'color': Colors.white,
    },
    {
      'icon': Icons.lock,
      'title': 'Lesson 2',
      'subtitle': 'Topic description ...',
      'color': Colors.white,
    },
     {
      'icon': Icons.lock,
      'title': 'Lesson 3',
      'subtitle': 'Topic description ...',
      'color': Colors.white,
    },
     {
      'icon': Icons.lock,
      'title': 'Lesson 4',
      'subtitle': 'Topic description ...',
      'color': Colors.white,
    },
    {
      'icon': Icons.lock,
      'title': 'Lesson 5',
      'subtitle': 'Topic description ...',
      'color': Colors.white,
    },
  ];


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).scaffoldBackgroundColor ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration:  BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Theme.of(context).cardColor, Theme.of(context).primaryColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                     Text(
                        widget.des,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://via.placeholder.com/150',
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Author: ${widget.name}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Text(
                            '4.8 (20 Review)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Tab Section
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    tabs: const[
                      Tab(text: 'Playlist'),
                      Tab(text: 'Review'),
                      Tab(text: 'Author'),
                    ],
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                  ),
                  SizedBox(
                    height: 500,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        // Playlist Tab
                        Column(
                          children: [
                            
                          Expanded(
                            child: ListView.builder(
                            padding: const EdgeInsets.all(16.0),
                            itemCount: playlistItems.length,
                            itemBuilder: (context, index) {
                              final item = playlistItems[index];
                              return PlaylistItem(
                                icon: item['icon'],
                                title: item['title'],
                                subtitle: item['subtitle'],
                                color: item['color'],
                              );
                            },
                                                    ),
                          ),
                          ],
                        ),
                        // Review Tab
                        const Center(child: Text('Review Content')),
                        // Author Tab
                        const Center(child: Text('Author Content')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const PlaylistItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>const VideoDetailPage()));
        },
        child: Card(
          color: Theme.of(context).canvasColor, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: Icon(icon, color: color, size: 32),
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[200],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
