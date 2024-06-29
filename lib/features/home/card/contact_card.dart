import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/models/chatt_model.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key, required this.contact});
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage(contact.backgroundImageperson),
        ),
        title: Text(
          contact.name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          contact.status,
          style: const TextStyle(
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
