import 'package:Dashify/constants.dart';
import 'package:flutter/material.dart';

class TopMenusInfo {
  final String svgSrc, title, totalStorage, description;
  final int percentage;
  final Color color;

  TopMenusInfo(
      {this.svgSrc,
      this.title,
      this.totalStorage,
      this.description,
      this.percentage,
      this.color});
}

List demoMyFiels = [
  TopMenusInfo(
    title: "CPU Load",
    description: "35%",
    svgSrc: "assets/icons/cpu.svg",
    totalStorage: "100%",
    color: primaryColor,
    percentage: 35,
  ),
  TopMenusInfo(
    title: "System RAM",
    description: "5612MB",
    svgSrc: "assets/icons/ram.svg",
    totalStorage: "16GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  TopMenusInfo(
    title: "Virtual RAM",
    description: "2161MB",
    svgSrc: "assets/icons/ram.svg",
    totalStorage: "8GB",
    color: Color(0xFFFFA113),
    percentage: 27,
  ),
  TopMenusInfo(
    title: "JVM RAM",
    description: "2161MB",
    svgSrc: "assets/icons/ram.svg",
    totalStorage: "8GB",
    color: Color(0xFFFFA113),
    percentage: 27,
  ),
];
