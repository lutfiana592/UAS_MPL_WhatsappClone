import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/statuspage/saluran.dart';
import 'package:flutter_application_wa/features/home/statuspage/status.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_icon_button.dart';

class PembaruanPage extends StatelessWidget {
  const PembaruanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembaruan',
          style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),
        ),
        elevation: 1,
        actions: [
          CustomIconButtom(onPressed: () {}, icon: Icons.camera_alt_outlined),
          CustomIconButtom(onPressed: () {}, icon: Icons.search),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(value: "Setelan", child: Text('Setelan')),
            ];
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
          child: Column(
            children: [
              SizedBox(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Status",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    PopupMenuButton(onSelected: (value) {
                      print(value);
                    }, itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem(
                            value: "Privasi Status",
                            child: Text('Privasi Status')),
                      ];
                    })
                  ],
                ),
              ),
              const Status(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Saluran",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    CustomIconButtom(onPressed: () {}, icon: Icons.add),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Saluran(),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Positioned(
            bottom: 70,
            right: 5,
            child: SizedBox(
              width: 45, // Set the width of the FAB
              height: 45, // Set the height of the FAB
              child: FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('FAB 1 clicked')),
                  );
                }, // Set the size of the icon
                backgroundColor: const Color.fromARGB(255, 77, 76, 76),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                child: const Icon(Icons.create_sharp, size: 25),
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Container(
              child: FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('FAB 2 clicked')),
                  );
                },
                child: const Icon(Icons.camera_alt_outlined,
                    size: 30), // Set the size of the icon
              ),
            ),
          ),
        ],
      ),
    );
  }
}
