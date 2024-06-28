import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:interneepk/aunth/login_form.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _loggingOut = false;

  Future<void> _showLogoutDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              setState(() {
                _loggingOut = true; // Show circular progress indicator
              });
              await FirebaseAuth.instance.signOut(); // Sign out user
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()), // Navigate to login page
              );
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: _loggingOut
          ? const Center(
              child: CircularProgressIndicator(), // Show circular progress indicator while logging out
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 340,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.teal.shade200, Colors.teal.shade600],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('lib/assets/images/amir.png'), // Replace with your image URL
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text('Edit', style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Developer',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                Text(
                                  'Field',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                Text(
                                  'Course',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                Text(
                                  'Certification',
                                  style: TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        color: Theme.of(context).canvasColor,
                        elevation: 7.5,
                        child: const ListTile(
                          title: Text('Notification', style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.notification_important, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Card(
                        color: Theme.of(context).canvasColor,
                        elevation: 7.5,
                        child: const ListTile(
                          title: Text('Theme', style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.mode, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Card(
                        color: Theme.of(context).canvasColor,
                        elevation: 7.5,
                        child: const ListTile(
                          title: Text('Setting', style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.settings, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('More', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        color: Theme.of(context).canvasColor,
                        elevation: 7.5,
                        child: const ListTile(
                          title: Text('Language', style: TextStyle(color: Colors.white)),
                          trailing: Icon(Icons.translate, color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Card(
                        color: Theme.of(context).canvasColor,
                        elevation: 7.5,
                        child: ListTile(
                          title: const Text('Logout', style: TextStyle(color: Colors.white)),
                          trailing: IconButton(
                            icon: const Icon(Icons.logout, color: Colors.white),
                            onPressed: () {
                              _showLogoutDialog(context); // Show logout confirmation dialog
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
