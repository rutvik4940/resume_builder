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
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Course/Degree",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  const SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ("  B.Tech Inforation Technology"),
                    ),
                  ),
                 SizedBox(height: 10,),
                  const Text("School/College/Institute",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  const SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: (" Bhagvan Mahavir University"),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text("School/College/Institute",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  const SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                     hintText: ("70 % (or) 7.CGAP"),
                      prefixIcon:Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text("Year Of Pass",style: TextStyle(fontSize: 20,color: Colors.blueAccent)),
                  const SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: (" 2019"),
                      prefixIcon:Icon(Icons.email),
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
