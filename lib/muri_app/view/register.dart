import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
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
                          TextSpan(text: '?'),
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
                              labelText: 'Masukkan Username',
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
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              labelText: 'Konfirmasi kata sandi',
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
                            validator: (value) {
                              if (value != _passwordController.text) {
                                return 'Kata sandi tidak sama';
                              }
                              return null;
                            },
                            onSaved: (value) => _confirmPassword = value,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // if (_formKey.currentState!.validate()) {
                                //   _formKey.currentState!.save();
                                //   // Process data
                                // }
                                context.go('/login');
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
                                'Daftar',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
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
