import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget{
  final controller;
  final String hintText;  //Vista previa del campo a llenar
  final bool obscureText; //para ocultar la contraseña

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText});

  @override
  Widget build(BuildContext context){
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:TextField(
            controller: controller,
            obscureText: obscureText, //para ocultar la contraseña
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
      );
  }

}