import 'package:flutter/material.dart';

class ProjectDetailScreen extends StatelessWidget {
  static const routeName = '/projectDetailScreen';
  final String projectName;
  final String projectDescription;

  const ProjectDetailScreen({
    Key? key,
    required this.projectName,
    required this.projectDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projectName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(projectDescription),
      ),
    );
  }
}
