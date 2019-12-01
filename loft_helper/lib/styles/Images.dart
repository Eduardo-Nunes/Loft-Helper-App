import 'package:flutter/material.dart';
import 'package:dart_random_choice/dart_random_choice.dart';

const APP_LOGO_PATH = 'assets/images/logo_lofthelper.png';
const SPLASH_LOGO_PATH = 'assets/images/splash_lofthelper.png';
const IMAGE_4 = "assets/images/image_4.png";
const IMAGE_5 = "assets/images/image_5.png";
const images = [IMAGE_4, IMAGE_5];

final appLogoImage = Image.asset(
  APP_LOGO_PATH,
  height: 64,
  width: 96,
);

String getRandomImage() {
  return randomChoice(images);
}
