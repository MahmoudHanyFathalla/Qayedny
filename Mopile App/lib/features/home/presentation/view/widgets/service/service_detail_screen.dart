import 'package:flutter/material.dart';

class ServiceDetailScreen extends StatelessWidget {
  static const routeName = '/serviceDetailScreen';


  const ServiceDetailScreen({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
      ),
    );
  }
}
