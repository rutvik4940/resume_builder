import 'package:flutter/material.dart';
import 'package:resume_builder/utils/global.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalScreen> {
  String selectedGroupValue = "Married";
  bool? isenglish=false;
  bool? ishindi=false;
  bool? isgujrati=false;
  TextEditingController txtdob=TextEditingController();
  TextEditingController txtnationality=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
                "Personal Details"),
            centerTitle: true,
            toolbarHeight: 180,
            backgroundColor: Colors.blue.shade700,
            leading:  const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white
            ),
          ),
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.sizeOf(context).height*0.70,
              width: MediaQuery.sizeOf(context).width*0.80,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black12,blurRadius: 5,spreadRadius: 2),
                  ]
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("DOB",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "DD/MM/YY"
                        )
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Marital Status",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Radio(value: "Single", groupValue: selectedGroupValue, onChanged: (value) {
                          setState(() {
                            selectedGroupValue=value!;
                          });
                        },
                        ),
                        const Text("Single",style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: "Married", groupValue: selectedGroupValue, onChanged: (value) {
                          setState(() {
                            selectedGroupValue=value!;
                          });
                        },
                        ),
                        const Text("Married",style: TextStyle(fontSize: 18))
                      ],
                    ),
                    const Text("Languages Knows",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Checkbox(value: isenglish, onChanged: (value) {
                          setState(() {
                            isenglish=value!;
                          });
                        },
                        ),
                       const Text("Hindi",style: TextStyle(fontSize: 15)),
                        ]
                    ),
                        Row(
                          children: [
                            Checkbox(value: ishindi, onChanged: (value) {
                              setState(() {
                                ishindi=value!;
                              });
                            },
                            ),
                        const Text("English",style: TextStyle(fontSize: 15)),
                        ]
                ),
                        Row(
                          children: [
                            Checkbox(value: isgujrati, onChanged: (value) {
                              setState(() {
                                isgujrati=value!;
                              });
                            },
                            ),

                        const Text("Gujrati",style: TextStyle(fontSize: 15)),
                            ]
                        ),
                    const Text("Languages Knows",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Indian"
                        )
                    ),
                    const SizedBox(height: 10,),
                    Center(
                      child: ElevatedButton(onPressed: () {
                        String Dob=txtdob.text;
                        String nationality=txtnationality.text;
                        String? lan1,lan2,lan3;
                        if(isenglish!)
                          {
                            lan1="English";
                          }
                        if(ishindi!)
                        {
                          lan2="Hindi";
                        }
                        if(isenglish!)
                        {
                          lan3="Gujrati";
                        }
                        dataList.add(Dob);
                        dataList.add(nationality);
                        dataList.add(lan1);
                        dataList.add(lan2);
                        dataList.add(lan3);

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text("save the data")));
                      },
                          child:const Text("SAVE"), ),
                    )
                      ],
                    ),
              )

              ),

            ),

          )
      );
  }
}