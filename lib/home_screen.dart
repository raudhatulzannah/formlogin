import 'package:flutter/material.dart';
import 'package:formlogin/form_screen.dart';
import 'form_login.dart';

class HomeScreen extends StatefulWidget {
  static const String routes = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 254, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FROM LOGIN & REGISTER'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                width: 600,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  "https://images.hukumonline.com/frontend/2017/website-assets/login-illustration-new.png",
                )),
            Column(
              children: const [
                Text('MASUK KE AKUN ANDA',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Text('',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Text("Belum punya akun? Daftar Sekarang"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 235, 241, 83),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FormScreen();
                      }));
                    },
                    child: const Text('Login'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 235, 241, 83),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
