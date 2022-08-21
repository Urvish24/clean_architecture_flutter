library constants;

import 'package:flutter/material.dart';

// # app Strings
const String app_name = "My Fitness";
const String stagingUrl = "http://13.234.30.96:8000/";
const String productionUrl = "http://43.204.84.209:3002/";
const String baseUrl = stagingUrl;

// # apis
const String getOtp = baseUrl + "getOtp";

// # Colors
const Color black = Color.fromRGBO(0, 0, 0, 1);
const Color white = Color.fromRGBO(255, 255, 255, 1);
const Color shimmerGray = Color.fromRGBO(241, 241, 241, 1);
const Color appSecondColor = Color.fromRGBO(206, 153, 250, 1);
const Color appThirdColor = Color.fromRGBO(159, 0, 244, 1);
const Color pepule = Color.fromRGBO(147, 97, 230, 1);
const Color grayLight = Color.fromRGBO(238, 238, 238, 1);
const Color gray = Color.fromRGBO(170, 170, 170, 1);
const Color graylightsecond = Color.fromRGBO(229, 239, 236, 1);
const Color tint = Color.fromRGBO(0, 97, 73, 1);
const Color yellow = Color.fromRGBO(255, 179, 0, 1);
const Color parry = Color.fromRGBO(103, 62, 239, 1);
const Color greenBorder = Color.fromRGBO(34, 163, 41, 1);

final btnText = (tColor) => TextStyle(
    fontFamily: figtree,
    fontWeight: FontWeight.w700,
    fontSize: 13,
    color: tColor);

//figtree
final figtreeExtralight = ({double fSize = 14.0, fColor = black}) => TextStyle(
    fontFamily: figtree,
    fontWeight: FontWeight.w200,
    color: fColor,
    fontSize: fSize);
final figtreeLight = ({double fSize = 14.0, fColor = black}) => TextStyle(
    fontFamily: figtree,
    fontWeight: FontWeight.w300,
    color: fColor,
    fontSize: fSize);
final figtreeRegular = ({double fSize = 14.0, fColor = black}) => TextStyle(
    fontFamily: figtree,
    fontWeight: FontWeight.w400,
    color: fColor,
    fontSize: fSize);
final figtreeMedium = ({double fSize = 14.0, fColor = black}) => TextStyle(
    fontFamily: figtree,
    fontWeight: FontWeight.w500,
    color: fColor,
    fontSize: fSize);
final figtreeSemibold = ({double fSize = 14.0, fColor = black}) => TextStyle(
    fontFamily: figtree,
    fontWeight: FontWeight.w600,
    color: fColor,
    fontSize: fSize);
final figtreeBold = ({double fSize = 14.0, fColor = black}) => TextStyle(
    fontFamily: figtree,
    fontWeight: FontWeight.w700,
    color: fColor,
    fontSize: fSize);

// other annonomys fuction
final width = (context) => MediaQuery.of(context).size.width;
final height = (context) => MediaQuery.of(context).size.height;

// # Images route
const String welComeBackground = 'lib/res/images/welcomebackground.png';
const String ic_apple = 'lib/res/images/ic_apple.png';

// # Font
const String figtree = 'Figtree';
