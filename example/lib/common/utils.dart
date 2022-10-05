import 'dart:ui';

var pixelRatio = window.devicePixelRatio;
var logicalScreenSize = window.physicalSize / pixelRatio;
double width = logicalScreenSize.width;
double height = logicalScreenSize.height;