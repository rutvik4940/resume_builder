import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EductionScreen extends StatefulWidget {
  const EductionScreen({super.key});

  @override
  State<EductionScreen> createState() => _EductionScreenState();
}

class _EductionScreenState extends State<EductionScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:Scaffold(
        appBar: AppBar(
        title: const Text(" Eduction"),
    toolbarHeight: 150,
    centerTitle: true,
          ),
          body: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                height: 420,
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
                  const Text("Course/Degree",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
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
                        hintText: ("  B.Tech Inforation Technology"),
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
                        hintText: (" Bhagvan Mahavir University"),
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
                    child:  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:  InputDecoration(
                       hintText: ("70 % (or) 7.CGAP"),
                        prefixIcon:Icon(Icons.email),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text("Year Of Pass",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
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
                      keyboardType: TextInputType.number,
                      decoration:  InputDecoration(
                        hintText: (" 2019"),
                        prefixIcon:Icon(Icons.email),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
    )
    );
  }
}
