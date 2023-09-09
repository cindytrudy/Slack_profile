import 'package:flutter/material.dart';
import 'pages/github_webview.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyProfileApp(),
    ),
  );
}

class MyProfileApp extends StatelessWidget {
  final String slackIdentity = "Ijeoma Trudy";
  final String githubUrl = "https://github.com/cindytrudy";
  final String profilePicture = "assets/images/profile.jpeg";
  final Color backgroundColor = Colors.purpleAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(
        slackIdentity: slackIdentity,
        githubUrl: githubUrl,
        profilePicture: profilePicture,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String slackIdentity;
  final String githubUrl;
  final String profilePicture;
  final Color backgroundColor;

  MyHomePage({
    required this.slackIdentity,
    required this.githubUrl,
    required this.profilePicture,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Container(
        color: backgroundColor,
        child: Align(// Adjust alignment as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(profilePicture),
                radius: 100,
              ),
              SizedBox(height: 30),
              Text(
                slackIdentity,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GitHubWebView(),
                    ),
                  );
                },
                child: Text('Open GitHub'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
