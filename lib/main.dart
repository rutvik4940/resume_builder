import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder/utils/route.dart';

void main()
{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
  )
  );
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: app_routs,
      ),
);
}