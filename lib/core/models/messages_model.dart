import './user_model.dart';

class Message {
  final User  sender;
  final String  avatar;
  final String text;

  Message({
    required this.sender,
    required this.avatar,
    required this.text,
  });
}




final List<Message> messages = [
  Message(
    sender: addison,
    avatar: addison.avatar,
    text: "What Categories you will need expert in ?",
  ),
  Message(
    sender: currentUser,
    text: "Flutter Developer",
    avatar:addison.avatar,
  ),
  Message(
    sender: addison,
    text: "Mr Mohamed Maher , whats your Title ?",
   avatar: addison.avatar,
  ),
  Message(
    sender: currentUser,
    text:
    "Mohamed Maher",
    avatar: addison.avatar,
  ),
  Message(
    sender: addison,
    avatar: addison.avatar,
    text: "Hi , whats your Name ?",
  ),
];