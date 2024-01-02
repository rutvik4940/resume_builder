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
                height: 40,
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
                resume(title: "Contact info", Images: Icons.contacts,Route: 'contest' ),
                resume(title: " Carrier Objective", Images: Icons.shopping_bag_rounded, Route: 'contact'),
                resume(title: "Personal Details", Images: Icons.person,Route: 'contact'),
                resume(title: "Eduction", Images: Icons.book,Route: 'contact'),
                resume(title: "Experiences", Images: Icons.person_outline,Route: 'contact'),
                resume(title: " Technical Skills", Images: Icons.bookmark_remove_outlined,Route: 'contact'),
                resume(title: "Interest/Hobbies", Images: Icons.book_rounded,Route: 'contact'),
                resume(title: "Projects", Images: Icons.paste_rounded,Route: 'contact'),
                resume(title: "Achievements", Images: Icons.gas_meter_outlined,Route: 'contact'),
                resume(title: "References", Images: Icons.handshake_outlined,Route: 'contact'),
                resume(title: "Declaration", Images: Icons.border_color_outlined,Route: 'contact'),


              ],
            ),
          )
          ),
    );
  }

  Widget resume({required String title, required IconData Images,required String Route }) {
    return
      Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))
        ),
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, '$Route');
          },
          child: Row(
            children: [
              Icon(Images,size: 25),
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

