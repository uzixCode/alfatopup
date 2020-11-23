import 'package:flutter/material.dart';

extension CostumExtensionWidget on Widget {
  Widget center() {
    return Center(child: this);
  }

  Widget padding(EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
}
extension CostumExtensionString on String{
  String UpperAfterSpace(){
    while(true){
      for (var i = 0; i < this.length; i++) {
        String before = this[i].toUpperCase();
    return '${this.substring(0).toUpperCase()}';  
    }
    }
    
  }
}