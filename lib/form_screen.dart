import 'package:flutter/material.dart';

import 'form_login.dart';

class Signup extends StatefulWidget {
  static const String routes = 'Signup';
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  String yourname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Register'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Icon(
                Icons.person_add,
                size: 150,
                color: Color.fromARGB(255, 15, 202, 226),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text('Register',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
            //Text('Nama'),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Masukan Nama Anda',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            //Text('Email'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Masukan Email Anda',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            //Text('Password'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Masukan Password Anda',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 202, 226),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FormScreen();
                }));
              },
              child:
                  const Text('Create', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
