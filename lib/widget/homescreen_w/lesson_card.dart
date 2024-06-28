// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {

  const LessonCard({super.key, 
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> lessonData = [
    {
      'img': 'lib/assets/images/flutter.png',
      'title': 'Flutter developer',
      'subtitle': 'Basic (18 lessons)',
      'duration': '3h 30min',
      'rating': 4.9,
    },
    {
      'img': 'lib/assets/images/web.png',
      'title': 'Web design for beginners',
      'subtitle': 'UX Design (20 lessons)',
      'duration': '8h 30min',
      'rating': 4.8,
    },
    {
      'img': 'lib/assets/images/figma.png',
      'title': 'Figma master class',
      'subtitle': 'UI Design (20 lessons)',
      'duration': '6h 30min',
      'rating': 4.7,
    },
     {
      'img': 'lib/assets/images/dataS.png',
      'title': 'Data Science',
      'subtitle': 'Beginners level (20 lessons)',
      'duration': '10h 30min',
      'rating': 4.6,
    },
    
  ];
    return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lessonData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Card(
                          elevation: 7.5,
                          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
                          color: Theme.of(context).canvasColor,  
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox (
                                  width: 190,
                                  height: 100,
                                  child: Center(child: Image.asset(lessonData[index]['img']))
                                  ),
                                const SizedBox(height: 8),
                                Text(
                                  lessonData[index]['title'],
                                  style: const TextStyle(fontSize: 16,color: Colors.white ,fontWeight: FontWeight.bold),
                                ),
                                Text(lessonData[index]['subtitle'],style: const TextStyle(color: Colors.white),),
                                const SizedBox(height: 8),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Row(
                                      children: [
                                       Icon(Icons.access_time, size: 16,color: Colors.grey[200]),
                                        const SizedBox(width: 4),
                                        Text(lessonData[index]['duration'],style:  TextStyle(color: Colors.grey[200]),),
                                      ],
                                    ),
                                   Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.arrow_forward,color:Theme.of(context).primaryColor,),
                                    )

                                    ],
                                   ),
                                    const SizedBox(height: 2,),
                                    Row(
                                      children: [
                                        const Icon(Icons.star, size: 16, color: Colors.amber),
                                        const SizedBox(width: 4),
                                        Text(lessonData[index]['rating'].toString(),style:  TextStyle(color: Colors.grey[200]),
                                        ), // Convert rating to String
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
  }
}