import 'package:flutter/material.dart';

class Saluran extends StatelessWidget {
  const Saluran({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Saluran Toyota Supra')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/supra.jpg'),
                    ),
                  ),
                  const Text(
                    "Toyota..",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15), // Memberi jarak antar CircleAvatar
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Saluran STMIK WIDAYA UTAMA')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/swu.jpg'),
                    ),
                  ),
                  const Text(
                    "STMIK..",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15), // Memberi jarak antar CircleAvatar
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Saluran Motor dan Mobil Honda')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/honda.jpg'),
                    ),
                  ),
                  const Text(
                    "Honda..",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15), // Memberi jarak antar CircleAvatar
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Saluran Nissan GTR 2024')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/gtr.jpg'),
                    ),
                  ),
                  const Text(
                    "Nissan..",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15), // Memberi jarak antar CircleAvatar
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Saluran BMW ')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/bmw.jpg'),
                    ),
                  ),
                  const Text(
                    "BMW..",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15), // Memberi jarak antar CircleAvatar
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Saluran DS COORPORATION')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/ds.jpg'),
                    ),
                  ),
                  const Text(
                    "DS Co..",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
