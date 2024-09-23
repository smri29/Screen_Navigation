import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeScreen'),
          backgroundColor: Colors.lightGreenAccent,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return ProfileScreen();
                      },
                    ),
                  );
                },
                child: Text('Profile')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return settingsScreen();
                      },
                    ),
                  );
                },
                child: Text('Settings')
            ),
          ],
        ),
      ),
    );
  }
}
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.blueGrey,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(
                      builder: (context){
                        return settingsScreen();
                      },
                    ),
                  );
                },
                child: Text('Go to Settings')),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}



class settingsScreen extends StatefulWidget {
  const settingsScreen({super.key});

  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(
                      builder: (context){
                        return HomeScreen();
                      },
                    ),
                      (value) => false,
                  );
                },
                child: Text('Go to Home')
            ),
          ],
        ),
      ),
    );
  }
}




