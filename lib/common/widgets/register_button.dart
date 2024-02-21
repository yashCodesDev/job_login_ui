import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.onpressed,
  });

  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: OutlinedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))))),
            onPressed: onpressed,
            child: Text(
              'Register',
              style: GoogleFonts.outfit(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            )),
      ),
    );
  }
}
