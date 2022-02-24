import 'package:isokapp/controller/accounts/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lcontroller = Get.put(LoginController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Text(
                        'Welcome to IsokoApp',
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextField(
                      controller: lcontroller.emailController,
                      decoration: const InputDecoration(
                          // prefixIcon: Icon(Icons.supervised_user_circle)
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey)),
                          labelText: 'User Email'),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: lcontroller.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          // prefixIcon: Icon(Icons.supervised_user_circle)
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey)),
                          labelText: 'Password'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {
                          lcontroller.callLogin();
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xff014F86),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: double.infinity,
                          height: 40,
                          child: Obx(() => Center(
                              // ignore: unrelated_type_equality_checks
                              child: lcontroller.loading == true
                                  ? const Text('Logging....')
                                  : const Text('Login'))),
                        ))
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Do not have an Account?',
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          width: 40.0,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Signup',
                            style:
                                TextStyle(color: Colors.green, fontSize: 10.0),
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
