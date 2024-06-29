import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/panggilan/panggilan.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_icon_button.dart';

class PanggilanPage extends StatelessWidget {
  const PanggilanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Panggilan',
          style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
        ),
        elevation: 1,
        actions: [
          CustomIconButtom(onPressed: () {}, icon: Icons.camera_alt_outlined),
          CustomIconButtom(onPressed: () {}, icon: Icons.search),
          CustomIconButtom(onPressed: () {}, icon: Icons.more_vert),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 7,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Panggilan(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Terbaru",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
