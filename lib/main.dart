import 'dart:html';

import 'package:chat_app/my_App.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

final apikey = "ywfas97gpcp8";
final userToken =
    "a7yzprc6dkpt355g2nrp7jmy32gk3urxzerxj6e3y9s3j6rnx3m8cd43vuqdsncf";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //steam client
  final client = StreamChatClient(apikey, logLevel: Level.INFO);

  // current user
  await client.connectUser(User(id: "ChatApp"), userToken);

  //channel
  final channel = client.channel("messaging", id: "ChatApp12");
  await channel.watch();


  runApp(const MyApp());
}


