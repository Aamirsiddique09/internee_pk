import 'package:flutter/material.dart';
import 'package:interneepk/widget/All_course_w/playlist_w.dart';

class AllCourses extends StatelessWidget {
  final List<Map<String, dynamic>> coursesData = [
    {
      'img': 'lib/assets/images/adobe.png',
      'title': 'Adobe XD\nPrototyping',
      'subtitle': '25% Discount',
      'name': 'Ammar',
      'des': 'Basic guideline & tips & tricks for how to\nbecome a XD Prototyping designer easily.'
    },
    {
      'img': 'lib/assets/images/sketch.png',
      'title': 'Sketch\nShortcuts and tricks',
      'subtitle': '15% Discount',
      'name': 'John',
      'des': 'Learn the essential shortcuts and tricks to\nspeed up your workflow in Sketch.'
    },
    {
      'img': 'lib/assets/images/uimotion.png',
      'title': 'UI Motion Design\nin After Effects',
      'subtitle': '50% Discount',
      'name': 'Jane',
      'des': 'Master the art of UI motion design using\nAdobe After Effects with practical examples.'
    },
    {
      'img': 'lib/assets/images/figma.png',
      'title': 'Figma\nEssentials',
      'subtitle': '45% Discount',
      'name': 'Emily',
      'des': 'Get started with Figma and learn the\nfundamentals of this powerful design tool.'
    },
    {
      'img': 'lib/assets/images/adobephoto.png',
      'title': 'Adobe Photoshop\nRetouching',
      'subtitle': '25% Discount',
      'name': 'Michael',
      'des': 'Enhance your photos with professional\nretouching techniques using Adobe Photoshop.'
    },
    {
      'img': 'lib/assets/images/flutter.png',
      'title': 'Flutter\nDeveloper',
      'subtitle': '35% Discount',
      'name': 'Sarah',
      'des': 'Learn how to build beautiful and functional\nmobile apps using Flutter.'
    },
    {
      'img': 'lib/assets/images/web.png',
      'title': 'Web\nDeveloper',
      'subtitle': '25% Discount',
      'name': 'David',
      'des': 'Become a web developer with our comprehensive\ncourse covering HTML, CSS, and JavaScript.'
    },
  ];

  AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'ALL Courses!',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: coursesData.length,
          itemBuilder: (context, index) {
            final course = coursesData[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseDetailScreen(
                        title: course['title'],
                        name: course['name'],
                        des: course['des'],
                      ),
                    ),
                  );
                },
                child: Card(
                  color: Theme.of(context).canvasColor,
                  elevation: 7.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image(
                        image: AssetImage(course['img']),
                        width: 40,
                        height: 40,
                      ),
                    ),
                    title: Text(
                      course['title'],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      course['subtitle'],
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[200],
                      ),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
