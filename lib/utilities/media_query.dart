import 'package:flutter/material.dart';

mediaQueryHeight( context , double size) {
  return MediaQuery.of(context).size.height*size;
}

mediaQueryWidth(context , double size ) {
  return MediaQuery.of(context).size.width*size;

}