import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/utils/global.dart';

class TechnicalScreen extends StatefulWidget {
  const TechnicalScreen({super.key});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen> {
  List<TextEditingController>controller=[TextEditingController()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: const Icon(Icons.menu),
    centerTitle: true,
    title: const Text("Declaration" ),
    toolbarHeight: 200,
    ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.only(top: 30),
            width: MediaQuery.sizeOf(context).width*0.80,
            child: Column(
              children: [
                Text("Enter your skills",style: TextStyle(fontSize: 18)),
                Column(
                  children: List.generate(controller.length, (index) => TextFormField(
                    controller:controller[index] ,
                    onFieldSubmitted: (value) {
                      dataList.add(value);
                      print(dataList);
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            controller.removeAt(index);

                          });
                        },
                          icon:  Icon(Icons.delete)),
                      hintText: "c programming",
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  setState(() {
                    controller.add(TextEditingController());
                  });
                }, child:Text("ADD"))
              ],
            ),
          ),
        ),
      )
    );
  }
}
