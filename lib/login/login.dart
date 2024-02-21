import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:job_login_ui/common/widgets/login_button.dart';
import 'package:job_login_ui/home/home.dart';
import 'package:job_login_ui/signup/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Home()));
            },
            icon: const Icon(Iconsax.arrow_left_14)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let\'s Sign you in.',
                    style: GoogleFonts.outfit(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Welcome back',
                    style: GoogleFonts.outfit(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'You\'ve been missed!',
                    style: GoogleFonts.outfit(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: 28,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username or Email',
                          style: GoogleFonts.outfit(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Username or Email',
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: GoogleFonts.outfit(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Iconsax.eye_slash,
                                color: Colors.grey),
                            hintText: 'Enter Password',
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Divider(
                                height: 36,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'or',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                height: 36,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey)),
                              child: const Image(
                                image: AssetImage('assets/google.webp'),
                                height: 30,
                                width: 30,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey)),
                              child: const Image(
                                image: AssetImage('assets/linkedin_logo.webp'),
                                height: 30,
                                width: 30,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey)),
                              child: const Image(
                                image: AssetImage('assets/facebook.webp'),
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have account? ',
                                  style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUp()));
                                    },
                                    child: Text(
                                      'Register',
                                      style: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ))
                              ],
                            ),
                            LoginButton(onpressed: () {})
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
