import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class InnovationIdea {
  final String name;
  final String category;
  double progress;

  InnovationIdea({
    required this.name,
    required this.category,
    this.progress = 0.0,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Innovation Progress Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InnovationTrackerPage(),
    );
  }
}

class InnovationTrackerPage extends StatefulWidget {
  @override
  _InnovationTrackerPageState createState() => _InnovationTrackerPageState();
}

class _InnovationTrackerPageState extends State<InnovationTrackerPage> {
  List<InnovationIdea> ideas = [
    InnovationIdea(name: "Elimu Insight", category: "Education"),
    InnovationIdea(name: "Afya_Yangu", category: "Health"),
    InnovationIdea(name: "My_Pharmacy", category: "Health"),
    InnovationIdea(name: "Health based Analytics", category: "Health"),
    InnovationIdea(name: "My_Customer", category: "Business"),
    InnovationIdea(name: "SwahiliSort", category: "Business"),
    InnovationIdea(name: "My_Shop", category: "Business"),
    InnovationIdea(name: "My_Hotel", category: "Business"),
    InnovationIdea(name: "Real estate based project", category: "Business"),
    InnovationIdea(name: "Visitors monitoring system", category: "Business"),
    InnovationIdea(name: "Malnutrition Insights", category: "Nutrition"),
    InnovationIdea(name: "Food security based system", category: "Food security"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Innovation Progress Tracker'),
      ),
      body: ListView.builder(
        itemCount: ideas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ideas[index].name),
            subtitle: Text(ideas[index].category),
            trailing: Container(
              width: 100,
              child: LinearProgressIndicator(
                value: ideas[index].progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
          );
        },
      ),
    );
  }
}
