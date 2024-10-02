import 'package:flutter/material.dart';
import 'package:pertemuan4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jenisKelamin, hobi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(height: 20),
            // SizedBox(
            //   width: 400,
            //   // height: 200,
            //   child: TextFormField(
            //     controller: username,
            //     decoration: InputDecoration(
            //       hintText: 'Masukkan Username',
            //       labelText: "Nama",
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(5.0),
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 20),
            // SizedBox(
            //   width: 400,
            //   // height: 200,
            //   child: TextFormField(
            //     controller: username,
            //     decoration: InputDecoration(
            //       hintText: 'Masukkan Password',
            //       labelText: "Password",
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(5.0),
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(height: 20),
            // CustomTextfield(
            //     controller: username,
            //     label: "username",
            //     hint: "masukkan username"),
            // const SizedBox(height: 20),
            // CustomTextfield(
            //     controller: password,
            //     label: "password",
            //     hint: "masukkan password"),
            // const SizedBox(height: 20),
            const SizedBox(height: 20),
            CustomTextfield(
                controller: nama, label: "Nama", hint: "masukkan nama"),
            const SizedBox(height: 20),
            CustomTextfield(
                controller: email, label: "Email", hint: "masukkan email"),
            const SizedBox(height: 20),
            CustomTextfield(
                controller: umur, label: "Umur", hint: "masukkan umur"),
            const SizedBox(height: 20),
            const Text("Jenis Kelamin"),
            const SizedBox(height: 20),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Pria"),
              leading: Radio<String>(
                  value: "Pria",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Wanita"),
              leading: Radio<String>(
                  value: "Wanita",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            const SizedBox(height: 20),
            const Text("Hobi"), // hobi pake CHECKBOX
            const SizedBox(height: 5),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Belajar"),
              leading: Radio<String>(
                  value: "Belajar",
                  groupValue: hobi,
                  onChanged: (value) {
                    setState(() {
                      hobi = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Belijir"),
              leading: Radio<String>(
                  value: "Belijir",
                  groupValue: hobi,
                  onChanged: (value) {
                    setState(() {
                      hobi = value;
                    });
                  }),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // print(
                      //     "username: ${username.text}\npassword: ${password.text}");
                      // username.clear();
                      // password.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
