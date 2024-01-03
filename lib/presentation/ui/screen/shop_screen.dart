import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:felix_ui/presentation/ui/screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  List<AssetImage>jacket=[
    const AssetImage("assets/image/img_jemfir.png"),
    const AssetImage("assets/image/img_kurtka_yupqa.png"),
    const AssetImage("assets/image/img_kurtka_yellow.png"),
    const AssetImage("assets/image/img_kurtka_black.png"),
    const AssetImage("assets/image/img_snikers.png"),
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xffecedee),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
            ),
          ),
           SingleChildScrollView(
            child: Column(
              children: [
                    /// #jacket
                Stack(
                  alignment:Alignment.centerLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: SizedBox(
                        child: CarouselSlider(
                          options: CarouselOptions(
                              height: 270,
                              viewportFraction: 0.5,
                              enableInfiniteScroll: false,
                              enlargeCenterPage: true,
                          ),
                          items: [0,1,2,3,4,].map((i) {
                            final rasm = jacket[i];
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  height: 280,
                                  width: 170,
                                  decoration: const BoxDecoration(
                                    color: Color(0x55ffffff),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Material(
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                                          clipBehavior: Clip.antiAlias,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const DetailScreen(image: "assets/image/img_kurtka_yellow.png")));
                                            },
                                            child: Container(
                                              height: MediaQuery.sizeOf(context).height,
                                              width: MediaQuery.sizeOf(context).width,
                                              alignment: Alignment.topRight,
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(image:rasm, fit: BoxFit.cover),
                                                borderRadius: const BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: Container(
                                                  height: 32,
                                                  width: 32,
                                                  padding: const EdgeInsets.all(6),
                                                  decoration: const BoxDecoration(
                                                      color: Color(0xff14181e),
                                                      borderRadius: BorderRadius.all(Radius.circular(8))
                                                  ),
                                                  child:const SizedBox(
                                                      height: 20,
                                                      width: 20,
                                                      child: Image(image: AssetImage("assets/icons/ic_heart.png"),height: 20,width: 20,))
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                      "Kurtkalar",
                                                      style: GoogleFonts.inter(
                                                          fontSize: 17,
                                                          fontWeight: FontWeight.w500,
                                                          color: const Color(0xff14181e),
                                                          fontStyle: FontStyle.normal),
                                                      overflow: TextOverflow.ellipsis,
                                                    )),
                                                Expanded(
                                                    child: RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(color: Color(0xffc4c5c9),fontSize: 12,fontWeight: FontWeight.w400),
                                                            children: [
                                                              TextSpan(text: "\$165  "),
                                                              TextSpan(text: "\$76.99",style: TextStyle(color: Color(0xff614fe0),fontSize: 15,fontWeight: FontWeight.w500)),
                                                            ]

                                                        ))),
                                                Expanded(
                                                  child:Container(
                                                    height: 50,
                                                    width: double.maxFinite,
                                                    alignment: Alignment.center,
                                                    decoration: const BoxDecoration(
                                                        color: Color(0xff14181e),
                                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Image(image: AssetImage("assets/icons/ic_trash.png"),height: 15,width: 15,),
                                                        Text("  Add to cart",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),),
                                                      ],),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: RotatedBox(
                          quarterTurns: 3,
                           child: Text("Jacket")),
                    ),
                  ],
                ),
                    ///Shirt
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: SizedBox(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 270,
                            viewportFraction: 0.5,
                            enableInfiniteScroll: false,
                            enlargeCenterPage: true,
                          ),
                          items: [0,1,2,3,4].map((i) {
                            final imag = jacket[i];
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  height: 280,
                                  width: 170,
                                  decoration: const BoxDecoration(
                                    color: Color(0x55ffffff),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Material(
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                                          clipBehavior: Clip.antiAlias,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const DetailScreen(image: "assets/image/img_jemfir.png")));
                                            },
                                            child: Container(
                                              height: MediaQuery.sizeOf(context).height,
                                              width: MediaQuery.sizeOf(context).width,
                                              alignment: Alignment.topRight,
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(image:imag, fit: BoxFit.cover),
                                                borderRadius: const BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: Container(
                                                  height: 32,
                                                  width: 32,
                                                  padding: const EdgeInsets.all(6),
                                                  decoration: const BoxDecoration(
                                                      color: Color(0xff14181e),
                                                      borderRadius: BorderRadius.all(Radius.circular(8))
                                                  ),
                                                  child:const SizedBox(
                                                      height: 20,
                                                      width: 20,
                                                      child: Image(image: AssetImage("assets/icons/ic_heart.png"),height: 20,width: 20,))
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                      "Kurtkalar",
                                                      style: GoogleFonts.inter(
                                                          fontSize: 17,
                                                          fontWeight: FontWeight.w500,
                                                          color: const Color(0xff14181e),
                                                          fontStyle: FontStyle.normal),
                                                      overflow: TextOverflow.ellipsis,
                                                    )),
                                                Expanded(
                                                    child: RichText(
                                                        text: const TextSpan(
                                                            style: TextStyle(color: Color(0xffc4c5c9),fontSize: 12,fontWeight: FontWeight.w400),
                                                            children: [
                                                              TextSpan(text: "\$165  "),
                                                              TextSpan(text: "\$76.99",style: TextStyle(color: Color(0xff614fe0),fontSize: 15,fontWeight: FontWeight.w500)),
                                                            ]

                                                        ))),
                                                Expanded(
                                                  child:Container(
                                                    height: 50,
                                                    width: double.maxFinite,
                                                    alignment: Alignment.center,
                                                    decoration: const BoxDecoration(
                                                        color: Color(0xff14181e),
                                                        borderRadius: BorderRadius.all(Radius.circular(10))
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Image(image: AssetImage("assets/icons/ic_trash.png"),height: 15,width: 15,),
                                                        Text("  Add to cart",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),),
                                                      ],),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: RotatedBox(
                          quarterTurns: 3,
                          child: Text("Shirt")),
                    ),
                  ],
                ),


                const SizedBox(
                  height: 300,
                )
              ],
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 6, sigmaX: 6),
                child: SizedBox(
                  height: 60,
                  width: 342,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Image(
                            image: AssetImage("assets/icons/ic_arrow_left.png"),
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          flex: 3,
                          child: SizedBox(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Image(image: AssetImage("assets/icons/ic_search_normal.png"),),
                                ),
                                hintText: "Search",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(13)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color(0xff14181e)
                                  )
                                )
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(

                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color(0xff14181e),
                              borderRadius: BorderRadius.all(Radius.circular(13))
                            ),
                            child: const Image(
                              image: AssetImage(
                                  "assets/icons/ic_filter.png"),
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
