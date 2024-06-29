import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/card/button_card.dart';
import 'package:flutter_application_wa/features/home/card/contact_card.dart';
import 'package:flutter_application_wa/features/home/models/chatt_model.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_icon_button.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Dwi Septi Lutfiana",
        status: "Sibuk",
        isGroup: false,
        time: '',
        currentMessage: '',
        backgroundImageperson: 'assets/images/septi.png',
        backgroundImagegroup: '',
      ),
      ChatModel(
        name: "Didit Syawaludin",
        status: "Sedang Menikmati Hidup",
        isGroup: false,
        time: '',
        currentMessage: '',
        backgroundImageperson: 'assets/images/didit.jpg',
        backgroundImagegroup: '',
      ),
      ChatModel(
        name: "Niam Abdallah Nawaf",
        status: "Sedang Menggunakan Whatsapp",
        isGroup: false,
        time: '',
        currentMessage: '',
        backgroundImageperson: 'assets/images/niam.png',
        backgroundImagegroup: '',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih Kontak",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "3 Kontak",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          CustomIconButtom(
            onPressed: () {},
            icon: Icons.search,
          ),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                  value: "Undang Teman", child: Text('Undang Teman')),
              const PopupMenuItem(value: "Kontak", child: Text('Kontak')),
              const PopupMenuItem(value: "Perbarui", child: Text('Perbarui')),
              const PopupMenuItem(value: "Bantuan", child: Text('Bantuan')),
            ];
          })
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const ButtonCard(
              icon: Icons.group_add,
              name: "Grup Baru",
            );
          } else if (index == 1) {
            return Column(
              children: [
                Container(
                  child: const ButtonCard(
                    icon: Icons.person_add,
                    name: "Kontak Baru",
                  ),
                ),
                Container(
                  child: const ButtonCard(
                    icon: Icons.groups_2,
                    name: "Komunitas Baru",
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Colors.white,
                          child: const Text("Temukan"),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const ButtonCard(
                          icon: Icons.store,
                          name: "Bisnis",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Title(
                          color: Colors.white,
                          child: const Text("Kontak yang ditemukan"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: [
                Container(
                  child: ContactCard(
                    contact: contacts[index - 2],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
