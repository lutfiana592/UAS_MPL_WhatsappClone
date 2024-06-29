import 'package:flutter/material.dart';

class Panggilan extends StatelessWidget {
  const Panggilan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green[400],
              child: const Icon(Icons.link),
            ),
          ),
          title: const Text(
            "Buat Tautan Panggilan",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: const Row(
            children: [
              Text("Bagikan tautan untuk panggilan Whatsapp Anda",
                  style: TextStyle(fontSize: 13)),
            ],
          ),
        ),
      ],
    );
  }
}
