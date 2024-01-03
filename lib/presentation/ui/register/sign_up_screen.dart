import 'package:felix_ui/presentation/component/custom_text_field.dart';
import 'package:felix_ui/presentation/ui/register/otp_screen.dart';
import 'package:felix_ui/presentation/ui/register/sign_in_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {
  bool obs = false;
  bool obs2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  SizedBox(height: 32),
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
                 /// #Name
                 SizedBox(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff14181E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal
                  ),),
                  TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration:InputDecoration(

                      filled: true,
                      fillColor: const Color(0xfffafafa),
                      hintText:"Your name",
                      hintStyle:GoogleFonts.plusJakartaSans(
                          color: const Color(0xff59616C),
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
                 /// #Password
                 SizedBox(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Password",style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff14181E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal
                  ),),
                  TextField(
                    obscureText: obs,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration:InputDecoration(
                      filled: true,
                      fillColor: const Color(0xfffafafa),
                      hintText:"Your Password",
                      hintStyle:GoogleFonts.plusJakartaSans(
                          color: const Color(0xff59616C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                      ),
                      border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      ),
                      suffixIcon:IconButton(onPressed: (){
                        obs = !obs;
                        setState(() {});
                      },icon: obs ? const Icon(Icons.visibility_outlined,color: Color(0xff59616C),):const Icon(Icons.visibility_off_outlined,color: Color(0xff59616C),),)
                    ),
                  ),
                ],
              ),
            ),
                const SizedBox(height: 16),
                /// #Password
                SizedBox(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password",style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xff14181E),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal
                      ),),
                      TextField(
                        obscureText: obs2,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        decoration:InputDecoration(
                            filled: true,
                            fillColor: const Color(0xfffafafa),
                            hintText:"Your Password",
                            hintStyle:GoogleFonts.plusJakartaSans(
                                color: const Color(0xff59616C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal
                            ),
                            border: const UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none
                            ),
                            suffixIcon:IconButton(onPressed: (){
                              obs2 = !obs2;
                              setState(() {});
                            },icon: obs2 ? const Icon(Icons.visibility_outlined,color: Color(0xff59616C),):const Icon(Icons.visibility_off_outlined,color: Color(0xff59616C),),)
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                RichText(text: TextSpan(
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff999A9D),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    const TextSpan(text: "If you didn’t receive a code?"),
                    TextSpan(text: "Sign In",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff614FE0),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const SignInScreen()));
                    }
                    )]
                )),
                const SizedBox(height: 28),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
