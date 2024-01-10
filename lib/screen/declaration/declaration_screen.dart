import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeclarationScreen extends StatefulWidget {
  const DeclarationScreen({super.key});

  @override
  State<DeclarationScreen> createState() => _DeclarationScreenState();
}

class _DeclarationScreenState extends State<DeclarationScreen> {
  bool isOn=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: const Icon(Icons.menu),
    centerTitle: true,
    title: const Text("Declaration" ),
    toolbarHeight: 200,
    ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Declaration",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                      )
                  ),
                  Switch(value:isOn, onChanged: (value) {
                    setState(() {
                      isOn=value!;
                    });
                  },
                  ),
                    ],
                  ),
              Visibility(
                visible: isOn,
                child:  Column(
                  children: [
                    const SizedBox(height: 60,),
                    TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Declaration"
                        )
                    ),
                    const SizedBox(height: 20,),
                    const Divider(indent: 3,endIndent: 3,thickness: 3,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Date",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )
                        ),

                        Text("Place (Interview\nVenue/City",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                  ],
                ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 140,
                          child: Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "DD/MM/YYYY"
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 140,
                          child: Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Eg.Surat"
                                )
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
