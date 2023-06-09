import 'package:flutter/material.dart';
import 'package:loginsystem/Screens/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("System"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Homepage"),
            SizedBox(height: 10.0,),
            ElevatedButton(onPressed: () async{
              SharedPreferences  prefs = await SharedPreferences.getInstance();
              // prefs.clear();
              prefs.remove("loggedIn");
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext ctx) => LoginScreen()));


            }, child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
