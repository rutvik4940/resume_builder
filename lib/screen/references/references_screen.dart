import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferencesScreen extends StatefulWidget {
  const ReferencesScreen({super.key});

  @override
  State<ReferencesScreen> createState() => _ReferencesScreenState();
}

class _ReferencesScreenState extends State<ReferencesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: const Text("Referen"),
            toolbarHeight: 150,
            centerTitle: true,
          ),
          body: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            height: 350,
            width: 400,
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
                  const Text("Refeences Name",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
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
                        hintText: (" Suresh Shah"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text("Deigation",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
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
                        hintText: (" Marketing Manger,ID-342332"),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text("Orgaization/Institute",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
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
                    child:  TextFormField(
                      keyboardType: TextInputType.name,
                      decoration:  InputDecoration(
                        hintText: (" Green Engergy Pvt.Ltd"),
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
