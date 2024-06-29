import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/card/custom_card.dart';
import 'package:flutter_application_wa/features/home/contact/select_contact.dart';
import 'package:flutter_application_wa/features/home/models/chatt_model.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_icon_button.dart';

class ChattPage extends StatefulWidget {
  const ChattPage({super.key});

  @override
  State<ChattPage> createState() => _ChattPageState();
}

class _ChattPageState extends State<ChattPage> {
  List<ChatModel> Chats = [
    ChatModel(
      name: "Mobile Programming Lanjutan",
      isGroup: true,
      time: "10.05",
      currentMessage: "Info UAS Gaes",
      backgroundImagegroup: 'assets/images/group/Swu.png',
      backgroundImageperson: '',
      status: '',
    ),
    ChatModel(
      name: "Dwi Septi Lutfiana",
      isGroup: false,
      time: "Kemarin",
      currentMessage: "Info UAS MPL",
      backgroundImageperson: 'assets/images/septi.png',
      backgroundImagegroup: '',
      status: '',
    ),
    ChatModel(
      name: "Niam Abdallah Nawaf",
      isGroup: false,
      time: "Kemarin",
      currentMessage: "Info UAS Metopel",
      backgroundImageperson: 'assets/images/niam.png',
      backgroundImagegroup: '',
      status: '',
    ),
    ChatModel(
      name: "Didit Syawaludin",
      isGroup: false,
      time: "Kemarin",
      currentMessage: "Info UAS Komputasi Awan",
      backgroundImageperson: 'assets/images/didit.jpg',
      backgroundImagegroup: '',
      status: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 1,
        actions: [
          CustomIconButtom(onPressed: () {}, icon: Icons.camera_alt_outlined),
          CustomIconButtom(onPressed: () {}, icon: Icons.search),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(value: "Grup baru", child: Text('Grup Baru')),
              const PopupMenuItem(
                  value: "Siaran Baru", child: Text('Siaran Baru')),
              const PopupMenuItem(
                  value: "Perangkat Tertaut", child: Text('Perangkat Tertaut')),
              const PopupMenuItem(
                  value: "Pesan Berbintang", child: Text('Pesan Berbintang')),
              const PopupMenuItem(value: "Setelan", child: Text('Setelan')),
            ];
          })
        ],
      ),
      body: ListView.builder(
        itemCount: Chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: Chats[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => const SelectContact()));
        },
        child: const Icon(Icons.add_box, size: 25), // Set the size of the icon
      ),
    );
  }
}
