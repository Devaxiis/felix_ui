import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  final String image;

  const DetailScreen({super.key, required this.image});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int itemIN = 0;
  int itemCL = 0;
  List<String> size = [
    "S","M","L","XL"
  ];
  List<Color> colour=[
    Colors.yellow,
    Colors.red,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
                tag: "one",
                child: Image(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                )),
            const SizedBox(height: 32),

            /// #price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Modern light clothes",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xff14181e),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                          text: TextSpan(
                              style: GoogleFonts.plusJakartaSans(
                                color: const Color(0xff14181e),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              children: [
                            const TextSpan(text: "\$190.99"),
                            TextSpan(
                                text: "\$100.99",
                                style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w600)),
                          ]))
                    ],
                  )),
                  Expanded(
                      child: Container(
                    height: 50,
                    width: 100,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                        child: Text("Add to Cart",style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xfffefefe),
                          fontSize: 13,
                          fontWeight: FontWeight.w600
                        ),),
                  )
                  ),
                ],
              ),
            ),

            /// #Size
            Padding(
              padding: const EdgeInsets.only(left: 24,top: 24,bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("Choose Size",style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff1B2028),
                    fontSize: 14,fontWeight: FontWeight.w600
                  ),),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: size.length,
                        itemBuilder: (_,index){
                          final title = size[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Material(
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                onTap: (){
                                  itemIN = index;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: itemIN == index ? const Color(0xff14181e):const Color(0xffffffff),
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                      border: itemIN == index ?null :Border.all(
                                          width: 2,
                                          color: const Color(0xfff3f3f6)
                                      )
                                  ),
                                  child:itemIN == index ? Text(title,style: const TextStyle(color: Colors.white),): Text(title,style: const TextStyle(color: Color(0xff14181e)),),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text('Choose your size?',style: GoogleFonts.plusJakartaSans(
                color: const Color(0xff878787),
                fontSize: 12,fontWeight: FontWeight.w400
              ),),
            ),

            /// #Color
            Padding(
              padding: const EdgeInsets.only(left: 24,top: 24,bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Color",style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff1B2028),
                      fontSize: 14,fontWeight: FontWeight.w600
                  ),),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: colour.length,
                        itemBuilder: (_,index){
                          final colors = colour[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Material(
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                onTap: (){
                                  itemCL = index;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: colors,
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                      border: itemCL != index ?null :Border.all(
                                          width: 2,
                                          color: const Color(0xff000000)
                                      )
                                  ),

                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),


            /// #Rating



            /// #Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text:
                        "Its simple and elegant shape makes it perfect for those of you who like you who want minimalist clothes",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff747B84),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                TextSpan(
                    text: " Read More. . .",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff14181e),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
              ])),
            ),

            /// #Divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),

            /// #Look
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 30),
              child: Text(
                "Look",
                style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff14181e),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Container(
                          height: 300,
                          width: 150,
                          decoration: const BoxDecoration(
                            color: Color(0x55ffffff),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Hero(
                                  tag: "one",
                                  child: Material(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    clipBehavior: Clip.antiAlias,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    const DetailScreen(
                                                      image:
                                                          "assets/image/img_jemfir.png",
                                                    )));
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height,
                                        width: MediaQuery.sizeOf(context).width,
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image/img_jemfir.png"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Container(
                                            height: 32,
                                            width: 32,
                                            padding: const EdgeInsets.all(6),
                                            decoration: const BoxDecoration(
                                                color: Color(0xff14181e),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8))),
                                            child: const SizedBox(
                                                height: 20,
                                                width: 20,
                                                child: Image(
                                                  image: AssetImage(
                                                      "assets/icons/ic_heart.png"),
                                                  height: 20,
                                                  width: 20,
                                                ))),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffc4c5c9),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    children: [
                                              TextSpan(text: "\$165  "),
                                              TextSpan(
                                                  text: "\$76.99",
                                                  style: TextStyle(
                                                      color: Color(0xff614fe0),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]))),
                                        Expanded(
                                          child: Container(
                                            height: 50,
                                            width: double.maxFinite,
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                                color: Color(0xff14181e),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image(
                                                  image: AssetImage(
                                                      "assets/icons/ic_trash.png"),
                                                  height: 15,
                                                  width: 15,
                                                ),
                                                Text(
                                                  "  Add to cart",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
