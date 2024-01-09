import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            centerTitle: true,
            title: const Text("Resume App", ),
            toolbarHeight: 200,
            flexibleSpace: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
              padding: EdgeInsets.only(bottom: 10),
                child: const Text(
                    "Build options", style: TextStyle(fontSize: 18,color: Colors.white),
              ),
            ),
          ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10,),
                resume(title: "Contact info", images: Icons.contacts,route: 'contact' ),
                resume(title: " Carrier Objective", images: Icons.shopping_bag_rounded, route: 'carrier'),
                resume(title: "Personal Details", images: Icons.person,route: 'personal'),
                resume(title: "Eduction", images: Icons.book,route: 'eduction'),
                resume(title: "Experiences", images: Icons.person_outline,route: 'experiences'),
                resume(title: " Technical Skills", images: Icons.bookmark_remove_outlined,route: 'technical'),
                resume(title: "Interest/Hobbies", images: Icons.book_rounded,route: 'interest'),
                resume(title: "Projects", images: Icons.paste_rounded,route: 'project'),
                resume(title: "Achievements", images: Icons.gas_meter_outlined,route: 'achievements'),
                resume(title: "References", images: Icons.handshake_outlined,route: 'references'),
                resume(title: "Declaration", images: Icons.border_color_outlined,route: 'declaration'),

              ],
            ),
          )
          ),
    );
  }

  Widget resume({required String title, required IconData images,required String route }) {
    return
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '$route');
          },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))
          ),
            child: Row(
              children: [
                Icon(images,size: 25),
                const SizedBox(width: 10,),
                Text("$title", style: const TextStyle(fontSize: 18)),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
          ),
      );
  }
}

