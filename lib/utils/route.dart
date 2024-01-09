import 'package:flutter/cupertino.dart';
import 'package:resume_builder/screen/contect/contect_screen.dart';
import 'package:resume_builder/screen/home/home_screen.dart';
import 'package:resume_builder/screen/personal/personal_screen.dart';
import 'package:resume_builder/screen/eduction/eduction_screen.dart';
import 'package:resume_builder/screen/splash/splash_screen.dart';
import '../screen/achievements/achievements_screen.dart';
import '../screen/carreir/carrier_screen.dart';
import '../screen/declaration/declaration_screen.dart';
import '../screen/experiences/experiences_screen.dart';
import '../screen/interest/intrest_screen.dart';
import '../screen/project/project_screen.dart';
import '../screen/references/references_screen.dart';
import '../screen/technical/technical_screen.dart';

Map<String,WidgetBuilder>app_routs={
  '/':(context) => SplashScreen(),
  'home':(context) => HomeScreen(),
  'contact':(context) => ContectScreen(),
  'carrier':(context) => CarrierScreen(),
  'personal':(context) => PersonalScreen(),
  'eduction':(context) => EductionScreen(),
  'experiences':(context) => ExperiencesScreen(),
  'technical':(context) => TechnicalScreen(),
  'interest':(context) => IntrestScreen(),
  'project':(context) => ProjectScreen(),
  'achievements':(context) => AchievementsScreen(),
  'references':(context) => ReferencesScreen(),
  'declaration':(context) => DeclarationScreen(),
};