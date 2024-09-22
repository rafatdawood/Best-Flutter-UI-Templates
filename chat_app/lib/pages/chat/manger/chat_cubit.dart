import 'package:bloc/bloc.dart';
import 'package:chat_app/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  final messagess = FirebaseFirestore.instance.collection(kMessagesCollections);
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  String email = 'r.r@gmail.com';
  static String id = 'ChatPage';
  List<Message> messagesList = [];


  void sendMessage({required String message, required String email}) {
    messagess.add(
      {kMessage: message, kCreatedAt: DateTime.now(), 'id': email},
    );
  }
  void getMessages(){
    messagess.orderBy(kCreatedAt, descending: true).snapshots().listen((event){
      messagesList.clear();
      for(var doc in event.docs){
        messagesList.add(Message.fromJson(doc));
      }
      emit(ChatSuccess(messages: messagesList));
      print(messagesList);
    });
  }
}
