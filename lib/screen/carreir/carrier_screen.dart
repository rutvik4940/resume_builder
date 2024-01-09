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
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 40,top: 20),
                  child: Text("Carrier Objective",style: TextStyle(fontSize: 20,color: Colors.blue)),
        ),
                SizedBox(height: 10,),
                Container(
                  height: 130,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 40,right: 40),
                  padding: EdgeInsets.only(left: 20),
                  decoration: (
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black26,
                  )
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Address is required";
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                    },
                    maxLines: 5,
                    decoration: InputDecoration(
                      label: Text("Descripation"),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 40,top: 20),
                  child: Text("Current Designation (Expreienced Candidate)",style: TextStyle(fontSize: 20,color: Colors.blue)),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 40,right: 40),
                  padding: EdgeInsets.only(left: 20),
                  decoration: (
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black26,
                      )
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return "Address is required";
                      }
                      return null;
                    },
                    maxLines: 4,
                    decoration: InputDecoration(
                      label: Text("Software Enginner"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
