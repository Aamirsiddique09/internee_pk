import 'package:flutter/material.dart';

class InternshipCard extends StatelessWidget {
  const InternshipCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> internshipData = [
      {
        'img': 'lib/assets/images/techsol.png',
        'company': 'Tech Solutions',
        'position': 'Software Engineering Intern',
        'picture': Icons.business,
      },
      {
        'img': 'lib/assets/images/design.png',
        'company': 'Design Studio',
        'position': 'UI/UX Design Intern',
        'picture': Icons.design_services,
      },
      {
        'img': 'lib/assets/images/techbro.png',
        'company': 'Techbros',
        'position': 'Flutter Developer Intern',
      },
    ];

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: internshipData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Theme.of(context).canvasColor,
            elevation: 8.0, // Add shadow effect
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(8.0),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                backgroundImage:AssetImage(internshipData[index]['img']!),
              ),
              title: Text(
                internshipData[index]['company'],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                internshipData[index]['position'],
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
