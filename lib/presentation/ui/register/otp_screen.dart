import 'package:felix_ui/presentation/ui/register/verify_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Text("Verification Phone",style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff121212),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal
                ),textAlign: TextAlign.center,),
              ),
              RichText(
                text: TextSpan(
                    children: [
                TextSpan(text: "Please enter the code we just sent to phone number",style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff999A9D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal
                )),
                TextSpan(text: "  (+20) 123477092 299",style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff14181E),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal
                )),

              ]
                ),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Center(
                child: Pinput(
                  length: 4,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: RichText(text: TextSpan(
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff999A9D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      const TextSpan(text: "If you didn’t receive a code? "),
                      TextSpan(text: "Resend",
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xff614FE0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const VerifyScreen()));
                          }
                      )]
                )),
              ),
              const SizedBox(height: 28),
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const VerifyScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xff614FE0),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Text("Continue",style: GoogleFonts.plusJakartaSans(
                        color: const Color(0xfffefefe),
                        fontSize: 16,fontWeight: FontWeight.w600
                    ),),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
