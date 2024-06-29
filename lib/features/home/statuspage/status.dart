import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

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
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Status Saya')),
                          );
                        },
                        child: const CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            size: 30,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.green[400],
                          radius: 11,
                          child: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Status Saya",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),

              const SizedBox(width: 20), // Memberi jarak antar CircleAvatar
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Status Didit Syawaludin')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/didit.jpg'),
                    ),
                  ),
                  const Text(
                    "Didit Sy..",
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
                            content: Text('Status Dwi Septi Lutfiana')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/septi.png'),
                    ),
                  ),
                  const Text(
                    "Dwi Sep..",
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
                            content: Text('Status Niam Abdallah Nawaf')),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/images/niam.png'),
                    ),
                  ),
                  const Text(
                    "Niam Ab..",
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
