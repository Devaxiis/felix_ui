import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:felix_ui/presentation/ui/screen/category_screen.dart';
import 'package:felix_ui/presentation/ui/screen/detail_screen.dart';
import 'package:felix_ui/presentation/ui/screen/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<AssetImage>img=[
    const AssetImage("assets/image/img_kurtka_yupqa.png"),
    const AssetImage("assets/image/img_cap.png"),
    const AssetImage("assets/image/img_jemfir.png"),
    const AssetImage("assets/image/img_kurtka_yellow.png"),
    const AssetImage("assets/image/img_koylak.png"),
    const AssetImage("assets/image/img_snikers.png"),
    const AssetImage("assets/image/img_kurtka_black.png"),
  ];

  List<String> category = [
    "All","Clothing","Jacket","Shirts","Sweatshirt",
  ];
  int itemIN = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 400.0,
                            viewportFraction: 1,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 6),
                            autoPlayAnimationDuration: const Duration(seconds: 3)
                          ),
                          items: [1,2,3,4].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return  Container(
                                  height: 480,
                                  width: MediaQuery.sizeOf(context).width,
                                  alignment: Alignment.bottomLeft,
                                  padding: const EdgeInsets.all(15),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/image/img_opacha.png"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(20)),
                                  ),

                                );
                              },
                            );
                          }).toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
                                const Text("Let's explore tends",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                                Row(
                                  children: [
                                    Container(
                                      height: 4,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      height: 4,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      height: 4,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      height: 4,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   const SizedBox(height: 30),
                  /// #Top products list
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Top Products",style: TextStyle(color: Color(0xff14181e),fontSize: 20,fontWeight: FontWeight.w500),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                          itemCount: img.length,
                          itemBuilder: (_,index){
                          final image = img[index];
                            return Padding(
                              padding: const EdgeInsets.only(left: 20),
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
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                                          clipBehavior: Clip.antiAlias,
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const DetailScreen(image: "assets/image/img_kurtka_yellow.png",)));
                                            },
                                            child: Container(
                                              height: MediaQuery.sizeOf(context).height,
                                              width: MediaQuery.sizeOf(context).width,
                                              alignment: Alignment.topRight,
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(image:image, fit: BoxFit.cover),
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
                              ),
                            );
                          }),
                    ),
                  ),

                  /// #Card
                  Center(
                      child:Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Container(
                          height: 8,
                          width: 20,
                          decoration: const BoxDecoration(
                              color: Color(0xff14181e),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: Color(0xffeaebed),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: Color(0xffeaebed),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                              color:Color(0xffeaebed),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: const BoxDecoration(
                              color:Color(0xffeaebed),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                    ],
                  ),
                      )),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                    child: Container(
                      height: 150,
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(25),
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/img_boy_flover.png"),fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: const TextSpan(
                                style:TextStyle(color: Color(0xffffffff),fontSize: 25,fontWeight: FontWeight.w700),
                                children: [
                                  TextSpan(text: "Black\n"),
                                  TextSpan(text: "Fiday",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400)),
                                ]
                              ),

                          ),
                          RichText(
                              text: const TextSpan(
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Get  "),
                                  TextSpan(text: "50%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700)),
                                  TextSpan(text: "  off every purchase"),
                                ]
                              ),

                          )

                        ],
                      ),
                    ),
                  ),

                  /// #Special For You
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Special For You",style: TextStyle(color: Color(0xff14181e),fontSize: 20,fontWeight: FontWeight.w500),),
                      TextButton(onPressed: (){},
                          child: const DefaultTextStyle(
                            style: TextStyle(color: Color(0xff614fe0),fontSize: 15,fontWeight: FontWeight.w400),
                            child: Row(
                        children: [
                            Text("See All"),
                            Icon(Icons.arrow_forward_outlined)
                        ],
                      ),
                          ))
                    ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 20,top: 10),
                    child: SizedBox(
                      height: 30,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (_,index){
                            final title = category[index];
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
                                    alignment: Alignment.center,
                                   padding: const EdgeInsets.symmetric(horizontal: 15),
                                   decoration: BoxDecoration(
                                     color: itemIN == index ? const Color(0xff14181e):const Color(0xffffffff),
                                     borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 1.7 / 3,
                      ),
                        itemCount: img.length,
                        itemBuilder: (context, int index) {
                          final rasm = img[index];
                          return Container(
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
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      clipBehavior: Clip.antiAlias,
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const DetailScreen(image: "assets/image/img_kurtka_black.png",)));
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
                                          child: Material(

                                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                                            clipBehavior: Clip.antiAlias,
                                            child: InkWell(
                                              onTap: (){},
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
                                            child:Material(
                                              color: Colors.transparent,
                                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                                              clipBehavior: Clip.antiAlias,
                                              child: InkWell(
                                                onTap: (){},
                                                child: Container(
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
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          );
                        },),
                    ),
                  )





                ],
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.only(top: 25,left: 20,right: 20),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaY: 6,
                      sigmaX: 6
                  ),
                  child: SizedBox(
                    height: 60,
                    width: 342,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            color: Colors.transparent,
                              borderRadius: const BorderRadius.all(Radius.circular(50)),
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CategoryScreen()));
                                  },
                                  child: const SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Image(image: AssetImage("assets/icons/ic_category.png"),height: 24,width: 24,),
                                      )))),
                          const Image(image: AssetImage("assets/icons/app_logo.png"),height: 32,),
                          Material(
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.all(Radius.circular(50)),
                            clipBehavior: Clip.antiAlias,
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const NotificationScreen()));
                              },
                              child: const SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Image(image: AssetImage("assets/icons/ic_notification_bing.png"),height: 24,width: 24,),
                                  )),
                            ),
                          ),
                        ],),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
