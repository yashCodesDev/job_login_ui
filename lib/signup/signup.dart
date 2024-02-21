import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:job_login_ui/common/widgets/register_button.dart';
import 'package:job_login_ui/home/home.dart';
import 'package:job_login_ui/login/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create New Account',
                    style: GoogleFonts.outfit(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Sign in to learn better',
                    style:
                        GoogleFonts.outfit(fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username',
                          style: GoogleFonts.outfit(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Username',
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
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.outfit(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
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
                      height: 20,
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
                            suffixIcon: const Icon(FontAwesomeIcons.eyeSlash,
                                size: 20, color: Colors.grey),
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
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Confirm Password',
                              style: GoogleFonts.outfit(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  FontAwesomeIcons.eyeSlash,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                hintText: 'Enter Confirm Password',
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
                          height: 20,
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
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have account? ',
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const Login()));
                                },
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ))
                          ],
                        ),
                        RegisterButton(onpressed: () {})
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
