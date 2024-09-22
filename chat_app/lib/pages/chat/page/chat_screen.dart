import 'package:chat_app/pages/chat/manger/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../../widgets/chat_buble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  final _controller = ScrollController();
  final cubit = ChatCubit();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit.getMessages();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kPrimaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                kLogo,
                height: 50,
              ),
              Text('chat'),
            ],
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatCubit, ChatState>(
                builder: (context, state) {
                  return ListView.builder(
                      reverse: true,
                      controller: _controller,
                      itemCount: cubit.messagesList.length,
                      itemBuilder: (context, index) {
                        return cubit.messagesList[index].id == cubit.email ? ChatBuble(
                          message: cubit.messagesList[index],
                        ) : ChatBubleForFriend(message: cubit.messagesList[index]);
                      });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: controller,
                onSubmitted: (data) {
                  cubit.sendMessage(message: data, email: cubit.email);
                  controller.clear();
                  _controller.animateTo(0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                decoration: InputDecoration(
                  hintText: 'Send Message',
                  suffixIcon: Icon(
                    Icons.send,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
