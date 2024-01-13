import 'package:flutter/material.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/features/messaging/chat_detail.dart';

class ConversationList extends StatefulWidget {
  final String name;
  final String messageText;
  final String imageUrl;
  final String time;
  final bool isMessageRead;
  final bool
      isPhotoMessage; // Added property to indicate if it's a photo message

  const ConversationList({
    super.key,
    required this.name,
    required this.messageText,
    required this.imageUrl,
    required this.time,
    required this.isMessageRead,
    this.isPhotoMessage = false, // Default value is false
  });

  @override
  State<ConversationList> createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatDetailPage()),
        );
      },
      child: Container(
        padding:
            const EdgeInsets.only(left: 26, right: 16, top: 10, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: fill,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        widget.imageUrl,
                        width: 300,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 177,
                            child: CustomText(
                              text: widget.name,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          SizedBox(
                            width: 177,
                            child: widget.isPhotoMessage
                                ? Row(
                                    children: [
                                      const Icon(
                                        Icons.camera_alt_rounded,
                                        size: 16,
                                        color: hintcolor,
                                      ),
                                      const SizedBox(width: 4),
                                      CustomText(
                                        text: 'Photo',
                                        fontSize: 14,
                                        color: kBlueColor,
                                        fontWeight: widget.isMessageRead
                                            ? FontWeight.bold
                                            : FontWeight.normal,
                                      ),
                                    ],
                                  )
                                : CustomText(
                                    text: widget.messageText,
                                    fontSize: 14,
                                    color: kBlueColor,
                                    fontWeight: widget.isMessageRead
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomText(
              text: widget.time,
              fontSize: 14,
              color: kBlueColor,
              fontWeight:
                  widget.isMessageRead ? FontWeight.bold : FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
