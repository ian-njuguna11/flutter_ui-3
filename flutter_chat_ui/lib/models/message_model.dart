import 'dart:core';

import 'package:flutter_chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

//You - current user
final User currentUser =
    User(id: 0, name: "Current user", imageUrl: 'assets/images/monica.jpg');
//User
final User monica =
    User(id: 1, name: "Monica", imageUrl: 'assets/image/monica.jpg');

final User rachel =
    User(id: 2, name: "Rachel", imageUrl: 'assets/image/rachel.jpg');

final User john = User(id: 3, name: "John", imageUrl: 'assets/image/john.jpg');

final User joye = User(id: 4, name: "Joye", imageUrl: 'assets/image/joye.jpg');
final User devid =
    User(id: 5, name: "Devid", imageUrl: 'assets/image/devid.jpg');
final User phoebe =
    User(id: 6, name: "Phoebe", imageUrl: 'assets/image/phoebe.jpg');
final User ross = User(id: 7, name: "Ross", imageUrl: 'assets/image/ross.jpg');
final User smith =
    User(id: 8, name: "Smith", imageUrl: 'assets/image/smith.jpg');
final User chandler =
    User(id: 9, name: "Chandler", imageUrl: 'assets/image/chandler.jpg');

//Favorite contacts
List<User> favorites = [monica, rachel, joye, ross, chandler, phoebe];

//example chat on home screen
List<Message> chats = [
  Message(
      sender: joye,
      time: '5:30 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unread: false),
  Message(
      sender: phoebe,
      time: '4:30 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unread: true),
  Message(
      sender: rachel,
      time: '1:30 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unread: false),
  Message(
      sender: smith,
      time: '12:00 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unread: true),
  Message(
      sender: john,
      time: '10:30 AM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unread: false)
];

//example messages in chat screen
List<Message> messages = [
  Message(
      sender: joye,
      time: '1:30 PM',
      text: 'Hey, how\'s it going? What did you do today?',
      isLiked: true,
      unread: true),
  Message(
      sender: currentUser,
      time: '2:10 PM',
      text: 'Just working on flutter UI learning. Flutter is awasome.',
      isLiked: false,
      unread: true),
  Message(
      sender: joye,
      time: '2:11 PM',
      text: 'Thats great. I also started. Doing new things...',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '03:00 PM',
      text: 'Great to talk to you. Which part?',
      isLiked: false,
      unread: true),
  Message(
      sender: joye,
      time: '03:10 PM',
      text: 'Docker container\'s',
      isLiked: false,
      unread: true),
  Message(
      sender: joye,
      time: '03:10 PM',
      text: 'I will start it tomorrow.',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '04:10 PM',
      text: 'I am going to eat food. Are you comming?',
      isLiked: false,
      unread: true),
  Message(
      sender: joye,
      time: '04:15 PM',
      text: 'Where?',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '04:15 PM',
      text: 'Near-by resto where we usually go.',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '04:16 PM',
      text:
          'Yes, I am also hungry... Can you wait for 10 min I will come to your place.',
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: '04:16 PM',
      text: 'Yes, Waiting for you........',
      isLiked: false,
      unread: true),
];
