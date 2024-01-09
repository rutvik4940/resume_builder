import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExperiencesScreen extends StatefulWidget {
  const ExperiencesScreen({super.key});

  @override
  State<ExperiencesScreen> createState() => _ExperiencesScreenState();
}

class _ExperiencesScreenState extends State<ExperiencesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: const Text("Experiences"),
            toolbarHeight: 150,
            centerTitle: true,
          ),
          body: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            height:double.infinity,
            width:double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 1,
                  )
                ]
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Company Name",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  const SizedBox(height: 10,),
                  Container(
                    alignment:Alignment.center ,
                    height: 50,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                          )
                        ]
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration:  InputDecoration(
                        hintText: (" New Enterprise,San Francico"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text("School/College/Institute",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  const SizedBox(height: 10,),
                  Container(
                    alignment:Alignment.center ,
                    height: 50,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                          )
                        ]
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration:  InputDecoration(
                        hintText: (" Quality Test Engieer"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text("Roles (optional)",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  const SizedBox(height: 10,),
                  Container(
                    alignment:Alignment.center ,
                    height: 100,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                          )
                        ]
                    ),
                    child:  TextFormField(
                     maxLines: 5,
                      keyboardType: TextInputType.emailAddress,
                      decoration:  InputDecoration(
                        hintText: (" Working With Team members to\n come up with new concepts and\n product Analysis..  "),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        )
    );
  }
}
