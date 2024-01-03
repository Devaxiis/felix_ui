import 'package:felix_ui/presentation/ui/register/otp_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Text("Phone Number",style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff121212),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal
                ),textAlign: TextAlign.center,),
              ),
              Text("Please enter your phone number, so we can more easily deliver your order",style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xff999A9D),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal
              ),textAlign: TextAlign.center,),
              const SizedBox(height: 28),
              /// #PhoneNumber
              SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Phone Number",style: GoogleFonts.plusJakartaSans(
                        color: const Color(0xff14181E),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal
                    ),),
                    TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      decoration:InputDecoration(
                        prefixIcon:Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child:SizedBox(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.call,color: Color(0xff2F3A47),),
                                Text("+998(",style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xff14181E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                ),)
                              ],
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xfffafafa),
                        hintText:"__)___-__-__",
                        hintStyle:GoogleFonts.plusJakartaSans(
                            color: const Color(0xff2F3A47),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                        ),
                        border: const UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              Text("Forgot Password?",style: GoogleFonts.plusJakartaSans(
                color: const Color(0xff614FE0),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),),
               const SizedBox(height: 32),
              /// #NextButton
              Material(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> OtpScreen()));
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
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
