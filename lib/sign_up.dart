import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http_request/text_widget.dart';

import 'api.dart';




class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    return
      Scaffold(
          appBar: AppBar(
            leading:IconButton(
              padding: const EdgeInsets.only(left: 30),
              icon:Icon(Icons.arrow_back_ios, color:Color(0xFF363f93)),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          backgroundColor: Color(0xFFffffff),
          body:
          Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:height*0.05),
                TextWidget(text:"Here to Get", fontSize:26, isUnderLine:false),
                TextWidget(text:"Welcomed !", fontSize:26, isUnderLine:false),
                SizedBox(height:height*0.05),
                TextInput(textString:"Name", textController:nameController, obscureText:false),
                SizedBox(height:height*0.05),
                TextInput(textString:"Email", textController:emailController, obscureText:false),
                SizedBox(height: height*.05,),
                TextInput(textString:"Password", textController:passController, obscureText:true),
                SizedBox(height: height*.05,),
                TextInput(textString:"Password", textController:repassController, obscureText:true),
                SizedBox(height: height*.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(text:"Sign up", fontSize:22, isUnderLine:false),
                    GestureDetector(
                        onTap: (){

                        },
                        child:
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            color:Color(0xFF363f93),
                          ),
                          child: Icon(Icons.arrow_forward, color:Colors.white, size:30),
                        )
                    )
                  ],
                ),
                SizedBox(height:height*0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Container())
                        );
                      },
                      child:TextWidget(text:"Sign in", fontSize:16, isUnderLine:true),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child:TextWidget(text:"Forgot Password", fontSize:16, isUnderLine:true),

                    )
                  ],
                )
              ],
            ),
          )
      );


  }
}


class TextInput extends StatelessWidget {
  final String textString;
  TextEditingController textController;
  final bool obscureText;
  TextInput({Key? key, required this.textString, required this.textController, required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Color(0xFF000000)),
      cursorColor: Color(0xFF9b9b9b),
      controller: textController,
      keyboardType: TextInputType.text,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: this.textString,
        hintStyle: TextStyle(
            color: Color(0xFF9b9b9b),
            fontSize: 15,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}

