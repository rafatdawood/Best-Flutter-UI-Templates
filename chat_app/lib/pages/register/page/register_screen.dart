import 'package:chat_app/pages/register/manger/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cubit = RegisterCubit();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: BlocListener<RegisterCubit, RegisterState>(
          listener: (context, state) => logic(state),
          child: ListView(
            children: [
              Form(
                key: formKey,
                child: Container(
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Register",
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
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
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
                        onTap: () => cubit.registerUser(
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
                            'Register',
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  logic(state) {
    if(state is RegisterSuccess){
      Navigator.pop(context);
    }
    else if (state is RegisterFailure) {
      Fluttertoast.showToast(msg: state.errMessage);
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
