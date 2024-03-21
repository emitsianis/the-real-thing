import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_real_thing/components/chat_me_item.dart';
import 'package:the_real_thing/components/chat_other_item.dart';
import 'package:the_real_thing/components/toolbar.dart';
import 'package:the_real_thing/provider/app_repo.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppRepo>();

    return Scaffold(
      appBar: Toolbar(title: 'Chat'),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final chat = provider.chats[index];

          if (chat.user.id == provider.user?.id) {
            return ChatMeItem(chat: chat);
          } else {
            return ChatOtherItem(chat: chat);
          }
        },
        itemCount: provider.chats.length,
      ),
    );
  }
}
