import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/features/messaging/data/models/chat_message_model.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: const Text(
          "Hello, how r u?",
          style:
              TextStyle(color: kBlueColor, fontFamily: 'Poppins', fontSize: 14),
        ),
        messageType: "receiver"),
    ChatMessage(
        messageContent: SizedBox(
          width: 150,
          height: 21,
          child: Row(
            children: [
              const Icon(Icons.play_arrow),
              SizedBox(
                width: 120,
                child: SvgPicture.asset(
                  'assets/icons/side-bar/soundwave.svg',
                  width: 120,
                  height: 21,
                ),
              )
            ],
          ),
        ),
        messageType: "voicenote"),
    ChatMessage(
        messageContent: Container(
          width: 134.92,
          height: 180,
          decoration: ShapeDecoration(
            color: const Color(0xC0C0C0C0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/appIcon.jpeg',
              width: 44,
              height: 44,
              fit: BoxFit.fill,
            ),
          ),
        ),
        messageType: "sender"),
    ChatMessage(
        messageContent: const Text(
          "That’s is your logo, Ayman",
          style:
              TextStyle(color: kBlueColor, fontFamily: 'Poppins', fontSize: 14),
        ),
        messageType: "sender"),
    ChatMessage(
        messageContent: const Text(
          "Thank you <3",
          style:
              TextStyle(color: kBlueColor, fontFamily: 'Poppins', fontSize: 14),
        ),
        messageType: "receiver"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Add space above the AppBar
          const SizedBox(height: 20),
          PreferredSize(
            preferredSize:
                const Size.fromHeight(56), // Adjust the height as needed
            child: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              flexibleSpace: SafeArea(
                child: Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: ShapeDecoration(
                          color: fill,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            width: 44,
                            height: 44,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Ayman",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Online",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.phone_outlined,
                        color: kBlueColor,
                        size: 30,
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.videocam_outlined,
                        color: kBlueColor,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Stack(
              children: <Widget>[
                ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(
                        left: 14,
                        right: 14,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Align(
                        alignment: (messages[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : messages[index].messageType == "voicenote"
                                ? Alignment.topLeft
                                : Alignment.topRight),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (messages[index].messageType == "receiver"
                                ? Colors.grey.shade200
                                : (messages[index].messageType == "voicenote"
                                    ? const Color(
                                        0x190C3751) // Change color for voice notes
                                    : const Color(0x190C3751))),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: messages[index].messageContent,
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            // Handle attach something action
                          },
                          child: Container(
                            height: 48,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE4E4E4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(
                              Icons.attach_file,
                              color: kBlueColor,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            // Handle record audio action
                          },
                          child: Container(
                            height: 48,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE4E4E4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(
                              Icons.keyboard_voice_outlined,
                              color: kBlueColor,
                              size: 25,
                            ),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Container(
                          width: 235,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 253, 253,
                                253), // Set the background color of the container
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            style: const TextStyle(
                                color: Colors.white), // Set the text color
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromARGB(228, 253, 241,
                                  228), // Set the same background color as the container
                              hintText: "Type something...",
                              hintStyle:
                                  const TextStyle(color: Color(0xFF666666)),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 15,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide.none, // Remove the border side
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 0),
                        FloatingActionButton(
                          onPressed: () {
                            // Handle send message action
                          },
                          elevation: 0,
                          child: Container(
                            height: 48,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE4E4E4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child:
                                const Icon(Icons.send, color: kBlueColor, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
