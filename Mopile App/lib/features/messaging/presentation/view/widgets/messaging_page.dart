import 'package:flutter/material.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/features/messaging/presentation/view/widgets/conversation_list.dart';

class MessagingPage extends StatefulWidget {
  const MessagingPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MessagingPageState();
  }
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, left: 19, bottom: 12),
          child: SizedBox(
            width: 362,
            height: 44,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: const TextStyle(color: hintcolor),
                prefixIcon: const Icon(
                  Icons.search,
                  color: kBlueColor,
                  size: 20,
                ),
                filled: true,
                fillColor: fill,
                contentPadding: const EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: fill)),
              ),
            ),
          ),
        ),
        /*ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 16),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            List<String> names = [
              'Ayman',
              'Tarek',
              'yassmen',
              'Samar',
              'Hussein'
            ];
            List<String> messages = [
              'Good Luck',
              'Hello',
              'Hi there!',
              'How are you?',
              'Greetings!'
            ];
            List<String> imageUrls = [
              'https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              // 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'https://images.pexels.com/photos/1181686/pexels-photo-1181686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              'https://images.pexels.com/photos/428328/pexels-photo-428328.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ];
            List<String> times = [
              '5 minutes ago',
              '1 hour ago',
              '2 hours ago',
              '1 day ago',
              '1 week ago'
            ];

            // Set isPhotoMessage to true for messages that include a photo
            bool isPhotoMessage = index % 2 == 0;

            return Column(
              children: [
                ConversationList(
                  name: names[index],
                  messageText: messages[index],
                  imageUrl: imageUrls[index],
                  time: times[index],
                  isMessageRead: false,
                  isPhotoMessage: isPhotoMessage,
                ),
                const SizedBox(height: 21.5),
              ],
            );
          },
        ),*/
      ]),
    ));
  }
}
