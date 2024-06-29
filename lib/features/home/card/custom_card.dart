import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/chatt/individual_chatt.dart';
import 'package:flutter_application_wa/features/home/models/chatt_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => IndividualChat(
                          chatModel: chatModel,
                        )));
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(chatModel.isGroup
                  ? "assets/images/group/Swu.png"
                  : chatModel.backgroundImageperson),
            ),
            title: Text(
              chatModel.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.done_all,
                  size: 13,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(chatModel.currentMessage,
                    style: const TextStyle(fontSize: 13)),
              ],
            ),
            trailing: Column(
              children: [
                Text(chatModel.time),
                const Icon(
                  Icons.push_pin_sharp,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
