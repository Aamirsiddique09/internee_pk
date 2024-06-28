import 'package:flutter/material.dart';
import 'package:interneepk/widget/homescreen_w/internship_w.dart';
import 'package:interneepk/widget/homescreen_w/lesson_card.dart';
import 'package:interneepk/widget/homescreen_w/poster_w.dart'; // Replace with your actual path

class HomeScreen extends StatelessWidget {
 const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Aamir',
                          style:Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'Find your lessons today!',
                          style:Theme.of(context).textTheme.headlineSmall ,
                        ),
                      ],
                    ),
                    const Icon(Icons.notifications, size: 30),
                  ],
                               ),
               ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search now...',
                          hintStyle: const TextStyle(fontSize: 14),
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                   Positioned(
                    bottom: 50,
                    left: 2,
                    child:Image.asset('lib/assets/images/logo.png',width: 200,height: 200,),),
                    Positioned(
                      top: 73,
                      left: 13,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           const Text(
                        'Discover Top Picks',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        '+100 Courses',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Explore more'),
                      ),
                          
                      ],
                     )),
                   Positioned(
                    top: 30,
                    right: 2,
                    child:Image.asset('lib/assets/images/certi.png',width: 170,height:170,),), 
                     Positioned(
                    bottom: 35,
                    right: 70,
                    child:Image.asset('lib/assets/images/logo.png',width: 40,height: 40,),),                 
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular lessons',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child:  Text(
                        'See All',
                        style: TextStyle(fontSize: 16, color:Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 250,
                  child: LessonCard()),
              ),
                 const SizedBox(height: 26),
                 const Padding(
                   padding: EdgeInsets.only(left: 16,right: 16),
                   child: Text('Student Whole Achive Placment', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                 )
          ,                    const SizedBox(height: 50),
                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: SizedBox(
                    height: 470,
                    child: StudentGridView()),
                 ),
                 const SizedBox(height: 16),
          
                 Padding(
                   padding: const EdgeInsets.only(left: 16,right: 16),
                   child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                    const Text(
                      'Latest Internship',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child:  Text(
                        'See All',
                        style: TextStyle(fontSize: 16, color:Theme.of(context).primaryColor),
                      ),
                    ),
                                   ],
                                 ),
                 ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 340,
                  child: InternshipCard()),
              ),
                const SizedBox(height: 18),
                const Center(child: Text('Internee.pk'))
                
          
            ],
          ),
        ),
      ),
    );
  }
}
