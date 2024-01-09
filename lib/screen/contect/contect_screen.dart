import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ContectScreen extends StatefulWidget {
  const ContectScreen({super.key});

  @override
  State<ContectScreen> createState() => _ContectScreenState();
}

class _ContectScreenState extends State<ContectScreen> {
  int contactindex=0;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  GlobalKey<FormState>key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
          centerTitle: true,
           title: const Text("Resume Workspace"),
            toolbarHeight: 200,
               flexibleSpace: Align(
                  alignment: Alignment.bottomCenter,
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       InkWell(
                         onTap: (){
                           contactindex=0;
                         },
                           child: Text("Contact",style: TextStyle(fontSize: 18,color: Colors.white))),
                       InkWell(
                         onTap: (){
                           contactindex=1;
                         },
                           child: Text("Photo",style: TextStyle(fontSize: 18,color: Colors.white))),
                     ],
                   ),

                 ),
                            ),
          body:Row(
            children:[
              contectPage(title: "contect"),
            photoPage(),
      ]
    ),
    ),
    );

  }
  Widget contectPage({required String title,}){
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only( top: 20),
          width: MediaQuery.sizeOf(context).width*.80,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 1,
                    color: Colors.black26,
                )
              ]
          ),
          child:   Column(
            mainAxisSize:MainAxisSize.min,
            children: [
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Name is required";
                  }
                  return null;
                },
                controller: txtName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: Text("Name"),
                  prefixIcon: Icon(Icons.account_circle_outlined),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Email is required ";
                  }
                  else if(!RegExp("^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$").hasMatch(value))
                  {
                    return "enter the valid email";
                  }
                  return null;
                },
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email_outlined)
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Mobile No is required";
                  }
                  else if (value!.length!=10)
                  {
                    return "Enter the valid number";
                  }
                  return null;
                },
                controller: txtMobile,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    label: Text("Mobile"),
                    prefixIcon: Icon(Icons.phone_android_outlined)
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Address is required";
                  }
                  return null;
                },
                controller: txtAddress,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  label: Text("Address"),
                  prefixIcon: Icon(Icons.location_on_outlined),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                FocusScope.of(context).unfocus();
                if(key.currentState!.validate())
                {
                  String name = txtName.text;
                  String email = txtEmail.text;
                  String mobile = txtMobile.text;
                  String address = txtAddress.text;

                   dataList.add(name);
                   dataList.add(email);
                   dataList.add(mobile);
                   dataList.add(address);
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data is saved")));

                txtName.clear();
                txtEmail.clear();
                txtMobile.clear();
                txtAddress.clear();

              }, child: Text("Submit")
              )
            ],
          ),
        ),
      ),
    );

  }
  Widget photoPage(){
    return IndexedStack(
      children:[
        Align(
        alignment: Alignment.topCenter,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 20),
          height: MediaQuery.sizeOf(context).height*0.30,
          width: MediaQuery.sizeOf(context).width*0.85,
          color: Colors.white,
          child:  const Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(radius: 60,backgroundColor: Colors.black26),
              Align(alignment: Alignment(0.3,0.3),child: Icon(Icons.add_circle_outlined,color: Colors.blueAccent,))
            ],
          ),
        ),
      ),
    ]
    );
  }
}
