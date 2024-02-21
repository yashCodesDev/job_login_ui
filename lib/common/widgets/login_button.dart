import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onpressed,
  });
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: OutlinedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))))),
            onPressed: onpressed,
            child: Text(
              'Login',
              style: GoogleFonts.outfit(color: Colors.white, fontSize: 22),
            )),
      ),
    );
  }
}
