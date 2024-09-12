import 'package:flutter/material.dart';

// App name
const appName = 'AI Assistant';

// Media query to store the size of the device screen
late Size mq;

// Flag to toggle between API keys
bool useAPIKey1 = true;

// API keys (you should ideally store these securely)
const String apiKey1 = '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';
const String apiKey2 = 'AIzaSyAjGTQ3PhDLFi4sEPgXxGDyt3zuJhOOsTo';

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
