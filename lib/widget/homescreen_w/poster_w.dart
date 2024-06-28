import 'package:flutter/material.dart';

class StudentGridView extends StatelessWidget {
  final List<Map<String, dynamic>> studentsData = [
    {
      'name': 'Shazain \n Mastoi',
      'field': 'Java developer',
      'image': 'lib/assets/images/zain.png',
    },
    {
      'name': 'Naveed \n Noor',
      'field': 'UI/UX Design',
      'image': 'lib/assets/images/naveed.png',
    },
    {
      'name': 'Aamir \n Siddique',
      'field': 'Flutter developr',
      'image': 'lib/assets/images/amir.png',
    },
     {
      'name': 'Manoor \n Bibi',
      'field': 'Web developer',
      'image': 'lib/assets/images/manoor.png',
    },
    // Add more student data here
  ];

  StudentGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 9.0,
        mainAxisSpacing: 9.0,
        childAspectRatio: 0.75, // Adjusted for poster-like card aspect ratio
      ),
      itemCount: studentsData.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return PosterCard(studentData: studentsData[index]);
      },
    );
  }
}

class PosterCard extends StatelessWidget {
  final Map<String, dynamic> studentData;

  const PosterCard({super.key, required this.studentData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).canvasColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -30,
            left: (MediaQuery.of(context).size.width / 4) - 50,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(studentData['image']),
              backgroundColor: Colors.transparent,
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40), // Space for the avatar
                Text(
                  studentData['name'],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  studentData['field'],
                  style:  TextStyle(
                    fontSize: 16,
                    color: Colors.grey[200],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

