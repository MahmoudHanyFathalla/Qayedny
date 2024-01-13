import 'package:flutter/material.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/constants.dart';

class KnowledgeHubContainers extends StatelessWidget {
  const KnowledgeHubContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ContainerWidget(),
        SizedBox(width: 10),
        ContainerWidget(),
      ],
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 200,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(AssetsData.logoImage,
              width: double.infinity, height: 60, fit: BoxFit.contain),
          const Padding(
            padding: EdgeInsets.all(8),
            child: CustomText(text: 'Title'),
          ),
          const Padding(padding: EdgeInsets.all(8), child: Text("description")),
          const SizedBox(height: 30),
          Container(
            width: 130,
            height: 30,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(kYellowColor),
              ),
              child: const Text('Explore'),
            ),
          ),
        ],
      ),
    );
  }
}
