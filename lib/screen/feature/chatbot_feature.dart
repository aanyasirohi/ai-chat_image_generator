import 'package:ai_assistant/widget/custom_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/chat_controller.dart';
import '../../widget/message_card.dart';
// import '../apis/apis.dart';
// import '../helper/my_dialog.dart';
// import '../model/message.dart';

class ChatScreen extends StatelessWidget {
  final ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: const Text('Chat Assistant'),
      ),
      body: Column(
        children: [
          // Chat messages list
          Expanded(
            child: Obx(() => ListView.builder(
              controller: chatController.scrollC,
              itemCount: chatController.list.length,
              itemBuilder: (context, index) {
                final message = chatController.list[index];
                return MessageCard(message: message);
              },
            )),
          ),

          // Input field for user message
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // Expanded TextField for input
                Expanded(
                  child: TextField(
                    controller: chatController.textC,
                    decoration: InputDecoration(
                      hintText: 'Ask your question...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onSubmitted: (value) {
                      // Send the message when Enter is pressed
                      chatController.askQuestion();
                    },
                  ),
                ),
                const SizedBox(width: 8),

                // Send button
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Send the message when the button is pressed
                    chatController.askQuestion();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
