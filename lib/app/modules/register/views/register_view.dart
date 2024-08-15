import 'package:aplikasi_disdukcapil/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade200,
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                'assets/images/logo_disdukcapil.png',
                height: 70,
              )),
              const SizedBox(
                height: 60,
              ),
              const Text('Buat Akun',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const Text(
                'Silahkan buat akun baru disini',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  labelText: 'email',
                  prefixIconColor: Colors.black45,
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black45)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: controller.usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIconColor: Colors.black45,
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black45)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: controller.passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIconColor: Colors.black45,
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black45)),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.register(); // Melakukan registrasi
                    Get.off(() =>
                        const LoginView()); // Berpindah ke halaman login setelah registrasi berhasil
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sudah punya akun?',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  GestureDetector(
                      onTap: () => Get.to(() => const LoginView()),
                      child: Text(
                        ' Sign in',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[900]),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
