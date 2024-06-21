import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  String? _username, _password, _confirmPassword;

  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.56,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 150,
                        child: Image.asset(
                          'images/logopopi.png',
                          fit: BoxFit.contain,
                          width: double.infinity,
                        )),
                    const Text(
                      "Power Pilot",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black, // Specify your color here
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                              'Selamat datang! Silahkan daftar untuk menggunakan '),
                          TextSpan(
                              text: 'Power Pilot',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ''),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Username',
                              fillColor: Color(0xFFE1E1E1),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xFFE1E1E1)),
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Tolong masukkan username anda';
                              }
                              return null;
                            },
                            onSaved: (value) => _username = value,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              labelText: 'Masukkan kata sandi',
                              fillColor: Color(0xFFE1E1E1),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xFFE1E1E1)),
                                  borderRadius: BorderRadius.circular(7)),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                            ),
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Tolong masukkan kata sandi';
                              }
                              return null;
                            },
                            onSaved: (value) => _password = value,
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          // tombol login
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () async {
                                context.push('/');
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();

                                  // Kirim data masukan ke API
                                  var url = Uri.parse('https://dsg54c1p-8000.asse.devtunnels.ms/api/login'); // Ganti dengan URL API Anda
                                  var response = await http.post(
                                    url,
                                    body: {
                                      'name': _username,
                                      'password': _password,
                                    },
                                  );

                                  if (response.statusCode == 200) {
                                    // Jika login berhasil, lakukan sesuatu (misalnya, navigasi ke halaman selanjutnya)
                                    // Jika menggunakan GoRouter, Anda bisa melakukan navigasi seperti ini:
                                    context.go('/home');
                                  } else {
                                    // Jika login gagal, tampilkan pesan kesalahan
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text('Login Failed'),
                                          content: Text('Invalid username or password. Please try again.'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context); // Tutup dialog
                                              },
                                              child: Text('OK'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: const Color(
                                    0xFF1594D7), // This is the background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10), // This is the border radius
                                ),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          const SizedBox(
                            height: 50,
                          ),



                          SizedBox(
                            width: double.infinity,
                            height: 50,

                            child: GestureDetector(
                              onTap: () {
                                // if (_formKey.currentState!.validate()) {
                                //   _formKey.currentState!.save();
                                //   // Process data
                                // }
                                context.go('/register');
                              },

                              child: const Text(
                                "Don't have an account? Sign up",
                                textAlign: TextAlign.center,

                                style: TextStyle(
                                    fontSize: 18),
                              ),
                            ),
                          )


                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
