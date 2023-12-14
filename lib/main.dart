import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p1flutter/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1C1C1C),

          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press here
              Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 90),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'images/black minimalist fast food logo template2 1.png',
            width: 80,
            height: 78.74,
            fit: BoxFit.cover,
          ),
        ),
      ),
          actions: [],
          centerTitle: false,
          toolbarHeight: 79,
          elevation: 2,
        ),


        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(

                alignment: AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 14),
                  child: Text(
                    'Sign-Up',
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),


                Align(
                  alignment: AlignmentDirectional(-1.00,-1.00),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[



                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 15),
                            child: Text(
                              'First Name',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),

                            ),
                          ),

                          TextFormField(


                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF959595),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF909090),
                            width: 1.5,
                          ),

                          borderRadius: BorderRadius.circular(30),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(

                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(

                            width: 1.5,
                          ),

                          borderRadius: BorderRadius.circular(30),
                        ),

                      ),
                            validator: (value){
                        if(value!.trim().isEmpty){
                          return 'First Name Required';
                        }
                            },

                    ),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 15),
                        child: Text(
                          'Last Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      TextFormField(

                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF909090),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF909090),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(

                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(

                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),

                        validator: (value){
                          if(value!.trim().isEmpty){
                            return 'Last Name Required';
                          }
                        },

                    ),

                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 15),
                            child: Text(
                              'E-mail',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          TextFormField(


                            keyboardType: TextInputType.emailAddress,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),

                            validator: (value){
                              if(value!.trim().isEmpty){
                                return 'Email Required';
                              }
                              if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                                return 'Please Enter a Valid Email Address';
                              }
                            },

                          ),


                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 15),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          TextFormField(


                            autofocus: true,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),

                            validator: (value){
                              if(value!.trim().isEmpty){
                                return 'Password Required';
                              }
                              if(value.length < 8){ return 'Password must be at least 8 characters'; }

                            },

                          ),


                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 15),
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          TextFormField(


                            autofocus: true,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),

                            validator: (value){
                              if(value!.trim().isEmpty){
                                return 'Password Required';
                              }
                              if(value.length < 8){ return 'Password must be at least 8 characters'; }

                            },


                          ),


                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 15),
                            child: Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          TextFormField(


                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),

                            validator: (value){
                              if(value!.trim().isEmpty){
                                return 'Phone Number Required';
                              }
                              if(value.length >11 ){ return 'Invalid Phone Number'; }

                            },


                          ),


                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 15),
                            child: Text(
                              'Address',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          TextFormField(

                            maxLines: 5,

                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF909090),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(

                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),

                            validator: (value){
                              if(value!.trim().isEmpty){
                                return 'Enter your Address';
                              }


                            },


                          ),


                       Padding(

                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),

                        child:Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),

                            ),
                             ElevatedButton(
                               style: buttonPrimary,

                              onPressed: () {
                                if(_formKey.currentState!.validate()) {
                                            print('Register Successful');
                                          }
                                        },
                              child: Text('Sign-Up',
                              style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        )

                    )



                        ]
                    ),
                    )

                  )


              )



            ],
          ),
        ),
      ),
    );
  }
}