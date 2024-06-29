import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/models/chatt_model.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_icon_button.dart';

class IndividualChat extends StatefulWidget {
  const IndividualChat({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  State<IndividualChat> createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back,
                size: 20,
              ),
              const SizedBox(
                width: 7,
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage:
                    AssetImage(widget.chatModel.backgroundImageperson),
              ),
            ],
          ),
        ),
        title: Container(
          margin: const EdgeInsets.all(3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.chatModel.name,
                style: const TextStyle(
                    fontSize: 18.5, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Terakhir dilihat 1 Menit yang lalu",
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
        actions: [
          CustomIconButtom(onPressed: () {}, icon: Icons.videocam_outlined),
          CustomIconButtom(onPressed: () {}, icon: Icons.call_outlined),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(
                  value: "Lihat Kontak", child: Text('Lihat Kontak')),
              const PopupMenuItem(
                  value: "Media, tautan, dan dok",
                  child: Text('Media, tautan, dan dok')),
              const PopupMenuItem(value: "Cari", child: Text('Cari')),
              const PopupMenuItem(
                  value: "Bisukan Notifikasi",
                  child: Text('Bisukan Notifikasi')),
              const PopupMenuItem(
                  value: "Pesan Sementara", child: Text('Pesan Sementara')),
              const PopupMenuItem(value: "Walpapper", child: Text('Walpapper')),
              const PopupMenuItem(value: "Lainnya", child: Text('Lainnya')),
            ];
          }),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 60,
                        child: Card(
                          margin: const EdgeInsets.only(
                            left: 2,
                            right: 2,
                            bottom: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              hintText: "Ketik Pesan",
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.emoji_emotions,
                                ),
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButtom(
                                      onPressed: () {
                                        showBottomSheet(
                                            context: context,
                                            builder: (builder) =>
                                                bottomsheet());
                                      },
                                      icon: Icons.attach_file),
                                  CustomIconButtom(
                                      onPressed: () {},
                                      icon: Icons.camera_alt_outlined),
                                ],
                              ),
                              contentPadding: const EdgeInsets.all(5),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.green,
                          child: CustomIconButtom(
                            onPressed: () {},
                            icon: Icons.mic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return SizedBox(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreation(
                      Icons.insert_drive_file, Colors.indigo, "Dokumen"),
                  const SizedBox(width: 40),
                  iconcreation(Icons.camera_alt, Colors.pink, "Kamera"),
                  const SizedBox(width: 40),
                  iconcreation(Icons.insert_photo, Colors.purple, "Galeri"),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreation(Icons.headset, Colors.orange, "Audio"),
                  const SizedBox(width: 40),
                  iconcreation(Icons.location_pin, Colors.teal, "Lokasi"),
                  const SizedBox(width: 40),
                  iconcreation(Icons.person, Colors.blue, "Kontak"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconcreation(IconData icon, Color color, String text) {
    return InkWell(
      onTap: () {
        // Handle icon tap here
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icon,
              size: 29,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
