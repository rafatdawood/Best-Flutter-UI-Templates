import 'package:chat_app/pages/login/manger/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../chat/page/chat_screen.dart';
import '../../register/page/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cubit = LoginCubit();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) => Logic(state),
          builder: (context, state) {
            if(state is LoginLoading){
              return Center(child: CircularProgressIndicator(),);
            }else{
              return ListView(
                children: [
                  Container(
                    height: height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 36),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(59)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(59)),
                            fillColor: Color(0xffF8F8F8),
                            filled: true,
                            hintText: 'email',
                            hintStyle: TextStyle(
                              color: Color(0xFFD2D2D2),
                              fontSize: 13.83,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 17),
                          ),
                        ),
                        SizedBox(height: 8),
                        TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(59)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(59)),
                            fillColor: Color(0xffF8F8F8),
                            filled: true,
                            hintText: 'password',
                            hintStyle: TextStyle(
                              color: Color(0xFFD2D2D2),
                              fontSize: 13.83,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 17),
                          ),
                        ),
                        SizedBox(height: 36),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ));
                          },
                          overlayColor:
                          const WidgetStatePropertyAll(Colors.transparent),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Text(
                              "Create New Account",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF202020),
                                fontSize: 15,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 36),
                        InkWell(
                          onTap: () => cubit.loginUser(
                              email: emailController.text,
                              password: passwordController.text),
                          overlayColor:
                          const WidgetStatePropertyAll(Colors.transparent),
                          child: Container(
                            alignment: Alignment.center,
                            height: 61,
                            width: 336,
                            decoration: BoxDecoration(
                              color: Color(0xff004CFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Text(
                              'login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF3F3F3),
                                fontSize: 22,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Logic(state) {
    if (state is LoginSuccess) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(),
          ));
    } else if (state is LoginFailure) {
      Fluttertoast.showToast(msg: state.errMessage);
    }
  }
}
