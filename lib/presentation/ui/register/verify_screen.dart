import 'package:felix_ui/presentation/ui/main_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: Padding(
           padding:  const EdgeInsets.symmetric(horizontal: 24),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Spacer(),
               Center(
                 child: Text("Congratulation!",style: GoogleFonts.plusJakartaSans(
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
                Center(
                  child: const SizedBox(
                    height: 91,
                    child: Image(image: AssetImage("assets/image/Group.png"),fit: BoxFit.cover,),
                  ),
                ),
               const SizedBox(height: 28),
               Material(
                 borderRadius: const BorderRadius.all(Radius.circular(8)),
                 clipBehavior: Clip.antiAlias,
                 child: InkWell(
                   onTap: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const MainHomeScreen()));
                   },
                   child: Container(
                     height: 50,
                     width: double.infinity,
                     alignment: Alignment.center,
                     decoration: const BoxDecoration(
                       color: Color(0xff614FE0),
                       borderRadius: BorderRadius.all(Radius.circular(8)),
                     ),
                     child: Text("Get Started",style: GoogleFonts.plusJakartaSans(
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
