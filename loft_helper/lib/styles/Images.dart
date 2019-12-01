import 'package:flutter/material.dart';
import 'package:dart_random_choice/dart_random_choice.dart';

const APP_LOGO_PATH = 'assets/images/logo_lofthelper.png';
const SPLASH_LOGO_PATH = 'assets/images/splash_lofthelper.png';
const IMAGE_4 = "assets/images/image_4.png";
const IMAGE_5 = "assets/images/image_5.png";
const IMAGE_7 = "assets/images/image_7.png";
const IMAGE_8 = "assets/images/image_8.png";
const IMAGE_11 = "assets/images/image_11.png";
const IMAGE_12 = "assets/images/imagem12.png";
const IMAGE_13 = "assets/images/image_13.png";
const IMAGE_14 = "assets/images/image_14.png";
const images = [IMAGE_4, IMAGE_5, IMAGE_7, IMAGE_8, IMAGE_11, IMAGE_12, IMAGE_13, IMAGE_14];

final appLogoImage = Image.asset(
  APP_LOGO_PATH,
  height: 64,
  width: 96,
);

String getRandomImage() {
  return randomChoice(images);
}
