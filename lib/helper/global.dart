import 'package:flutter/material.dart';

// App name
const appName = 'AI Assistant';

// Media query to store the size of the device screen
late Size mq;

// Flag to toggle between API keys
bool useAPIKey1 = true;

// API keys (you should ideally store these securely)
const String apiKey1 = //'use your api key';
const String apiKey2 = //'use your key';

// Function to get the active API key
String getActiveApiKey() {
 return useAPIKey1 ? apiKey1 : apiKey2;
}

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return MaterialApp(
   title: appName,
   home: Scaffold(
    appBar: AppBar(
     title: Text(appName),
    ),
    body: Center(
     child: Text(
      'Using API Key: ${getActiveApiKey()}',
      style: TextStyle(fontSize: 20),
     ),
    ),
   ),
  );
 }
}
