import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/komunitas/komunitas.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_icon_button.dart';

class KomunitasPage extends StatelessWidget {
  const KomunitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Komunitas',
          style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
        ),
        elevation: 1,
        actions: [
          CustomIconButtom(onPressed: () {}, icon: Icons.camera_alt_outlined),
          CustomIconButtom(onPressed: () {}, icon: Icons.more_vert),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
          child: Column(
            children: [
              Komunitas(),
            ],
          ),
        ),
      ),
    );
  }
}
