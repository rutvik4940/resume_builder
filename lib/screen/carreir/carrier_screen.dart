import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarrierScreen extends StatefulWidget {
  const CarrierScreen({super.key});

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
  GlobalKey<FormState>key = GlobalKey<FormState>();
  GlobalKey<FormState>key1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: const Text("Carrier Objective"),
            toolbarHeight: 150,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Carrier Objective",style: TextStyle(fontSize: 20,color: Colors.blue)),
                  SizedBox(height: 10,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Descripation is required";
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      String carrier=value!;

                    },
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2),),
                    hintText: ("Descripation"),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Current Designation (Expreienced Candidate)",style: TextStyle(fontSize: 20,color: Colors.blue)),
                  SizedBox(height: 10,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Software Engineer is required";
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      String designation=value!;

                    },
                    maxLines: 2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                       hintText: ("Software Enginner"),
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
