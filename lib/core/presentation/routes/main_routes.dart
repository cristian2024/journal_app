import 'package:flutter/material.dart';
import 'package:journal/app/on.boarding/presentation/screens/on_boarding_screen.dart';
import 'package:journal/main.dart';

const  mainRoute = HomePage.route;
final mainRoutes = {
  HomePage.route: (BuildContext context) => const HomePage(),
  OnBoardingScreen.route: (BuildContext context) => const OnBoardingScreen(),
};
