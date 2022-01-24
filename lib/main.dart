
import 'package:flutter/material.dart';
import 'package:table_rsv/presentation/pages/home_page.dart';


//FIXME:README this will help you to run app.
///run the cmd in terminal and run app in google
///below cmd will help you to run app on chrome.
///please use this cmd to run app.
//TODO:type me: [flutter run -d chrome --web-renderer html --no-sound-null-safety]
///
///when you reload app it will continue initial state
///because flutter web not save cache states
///and it's running on localhost. when you
///deploy app on any hosting it will work fine.
///
///
/// [Important] note
/// please do not write em_ail or any per_sonal details in fiverr chat
/// fiverr not support this. please read fiverr ToS. do not send any details
/// it's against Fiverr ToS. Please take care of Fiverr ToS.
///please avoid using ban words in fiverr and take care of fiverr ToS.
///
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Table RSV",
      home: HomePage(),
    );
  }
}
