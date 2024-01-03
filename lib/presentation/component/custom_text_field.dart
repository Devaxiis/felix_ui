import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final bool obs;
  final String typeName;
  final String? hintName;
  final TextInputType type;
  const CustomTextField({super.key, required this.obs, required this.typeName, this.hintName, required this.type,});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    bool visible = true;

    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.typeName,style: GoogleFonts.plusJakartaSans(
              color: const Color(0xff2F3A47),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal
          ),),
          TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
           obscureText: widget.obs,
           decoration:InputDecoration(
              prefixIcon:widget.hintName != '' ?null:Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12),
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
             hintText:widget.hintName != "" ? widget.hintName :"__)___-__-__",
             hintStyle:widget.hintName != ''?GoogleFonts.plusJakartaSans(
                 color: const Color(0xff59616C),
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
                 fontStyle: FontStyle.normal
             ) :GoogleFonts.plusJakartaSans(
                 color: const Color(0xff2F3A47),
                 fontSize: 16,
                 fontWeight: FontWeight.w400,
                 fontStyle: FontStyle.normal
             ),
             border: const UnderlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(8)),
               borderSide: BorderSide.none
             ),
             suffixIcon:widget.obs?IconButton(
                 onPressed: (){
               visible != visible;
               setState(() {});
             }, icon: visible ? const Icon(Icons.visibility_outlined):const Icon(Icons.visibility_off_outlined)):null,
            ),
          ),
        ],
      ),
    );
  }
}
