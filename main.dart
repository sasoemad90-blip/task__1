import 'package:flutter/material.dart';

void main() {
  runApp
    (const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: MyUltimateMenu(),
      ),
    );
  }
}

class MyUltimateMenu extends StatelessWidget {
  const MyUltimateMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color:  Colors.white60,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Banner
                  Container(
                    padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
                    color: Colors.white,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("5:13", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Row(
                          children: [
                            Icon(Icons.signal_cellular_alt, size: 18),
                            SizedBox(width: 5),
                            Icon(Icons.wifi, size: 18),
                            SizedBox(width: 5),
                            Icon(Icons.battery_full, size: 18),
                            SizedBox(width: 5),
                            Text("76%", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // First image
                  Container(
                    width: double.infinity,
                    height: 220,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/banner.jpg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 10, offset: const Offset(0, 5)),
                      ],
                    ),
                  ),

                  // Restaurant_logo
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 20, offset: const Offset(0, 10)),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 65, height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.deepOrange, width: 2),
                            image: const DecorationImage(image: AssetImage('assets/images/restaurant_logo.jpg'), fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("اسم المطعم هنا", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("طعام بحري . مشويات . اكلات سريعة", style: TextStyle(color: Colors.grey, fontSize: 12)),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.orange, size: 16),
                                Text(" 5.0 (+100)", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.favorite_border, color: Colors.deepOrange),
                      ],
                    ),
                  ),

                  // trending
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        _catBtn("🔥 الافضل", true),
                        _catBtn("بيتزا", true),
                        _catBtn("مشويات", true),
                        _catBtn("حلويات", true),
                      ],
                    ),
                  ),


                  //second section for images
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Align(alignment: Alignment.centerRight, child: Text("🔥 الافضل", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          _itemGrid('assets/images/best_1.png', "باستا ايطالي"),
                          _itemGrid('assets/images/best_2.png', "فرخة مشوية"),
                        ],
                      ),
                      Row(
                        children: [
                          _itemGrid('assets/images/best_3.png', "بيتزا لارج"),
                          _itemGrid('assets/images/best_4.png', "سلطة فواكه"),
                        ],
                      ),
                    ],
                  ),

                  // third section for images

                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Align(alignment: Alignment.centerRight, child: Text("🍕 بيتزا", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
                  _itemLong('assets/images/noddles.png'),
                  _itemLong('assets/images/noddles.png'),
                  _itemLong('assets/images/noodles.png'),

                  const SizedBox(height: 120),
                ],
              ),
            ),

            // card
            Positioned(
              bottom: 30, left: 20, right: 20,
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color(0xFFFE8C8C), Color(0xFFF15F5F)]),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.red, blurRadius: 15, offset: const Offset(0, 8)),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("0.00 ج.م", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("الاطلاع على السلة", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
                    CircleAvatar(backgroundColor: Colors.white, radius: 15, child: Text("0", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // button widget
  Widget _catBtn(String text, bool isRed) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isRed ? Colors.red.shade50: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: isRed ? Colors.red : Colors.grey.shade200),
      ),
      child: Text(text, style: TextStyle(color: isRed ? Colors.red : Colors.black, fontWeight: FontWeight.bold)),
    );
  }

  // cube widget
  Widget _itemGrid(String img, String name) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10, offset: const Offset(0, 5))],
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Text("2.20 د.ك", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // rectangle widget
  Widget _itemLong(String img) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("معكرونة بالصوص الحار", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text("وصف سريع للوجبة يخلي العميل يجوع..", style: TextStyle(color: Colors.grey, fontSize: 11)),
                SizedBox(height: 10),
                Text("2.20 د.ك", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey)),
              ],
            ),
          ),
          Container(
            width: 85, height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}