import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_login_ui/common/widgets/login_button.dart';
import 'package:job_login_ui/common/widgets/register_button.dart';
import 'package:job_login_ui/login/login.dart';
import 'package:job_login_ui/signup/signup.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: SizedBox(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('assets/seek_jobs.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Welcome to',
              style:
                  GoogleFonts.outfit(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            Text('CareerConnect',
                style: GoogleFonts.outfit(
                    fontSize: 35, fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Welcome to CareerConnect, your gateway to a world of opportunities and professional growth. In a dynamic job market, navigating your career path can be challenging.",
                style: TextStyle(color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LoginButton(
              onpressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Login()));
              },
            ),
            RegisterButton(
              onpressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
