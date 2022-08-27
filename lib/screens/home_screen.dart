import 'package:dna11/screens/widgets/my_button.dart';
import 'package:dna11/screens/widgets/my_icon_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 1;
  double prise = 5000;
  double dileverPrise = 1500;

  late double totalPrise = prise + dileverPrise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.35,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red,
                      Colors.black54,
                    ],
                  )),
                  child: Image.asset(
                    "assets/images/pngwing.png",
                    height: 58,
                  ),
                ),
                Positioned(
                  top: 100,
                  child: Container(
                     height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                        )),

                  ),
                ),
                Positioned(
                    top:30,
                    right: 20,
                    child: Container(
                  height: 40,
                  width: 40,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                      color: Colors.white,

                  ),
                  child: Icon(Icons.arrow_forward),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "برجرات",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  detailsOfDelivery(),
                  const Text(
                    "سندويج فيليه الدجاج",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  additionsContainer(context),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      "تعليمات خاصة",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  notesContainer(context),
                  myPriceCount(),
                  SizedBox(height: 16,),
                  Center(
                      child: Text(
                        " ${totalPrise.toInt()} د.ع",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  MyButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container additionsContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      height: MediaQuery.of(context).size.width * 0.18,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey.withOpacity(0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up_sharp)),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "اضافات",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "اختياري",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container notesContainer(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 32),
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: MediaQuery.of(context).size.width * 0.12,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.withOpacity(0.3)),
        child: const SingleChildScrollView(
          child: Text(
            "اذا كانت لديك اي ملاحظات تخص الطلب يرجى كتابتها هنا",
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
        ));
  }

  Column detailsOfDelivery() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyIconText(
                  tex: "جيد جدا",
                  icon: Icons.tag_faces_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                MyIconText(
                  tex: "الحد الادنى للطلب 5000 د.ع",
                  icon: Icons.currency_exchange_rounded,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyIconText(
                  tex: "سعر التوصيل 1500 د.ع",
                  icon: Icons.delivery_dining_outlined,
                ),
                SizedBox(
                  height: 20,
                ),
                MyIconText(
                  tex: "المنصور",
                  icon: Icons.location_on_outlined,
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 72.0, top: 20, bottom: 32),
          child: MyIconText(
            tex: "وقت التوصيل المتوقع من نصف ساعة الى ساعة",
            icon: Icons.access_time_sharp,
          ),
        ),
      ],
    );
  }

  Row myPriceCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.3)),
          height: 40,
          width: 40,
          child: Center(
              child: IconButton(
            onPressed: () {
              setState(() {
                if (x != 0) {
                  x--;
                  totalPrise -= prise;
                }
                if (x == 0) totalPrise = 0;
              });
            },
            icon: Icon(Icons.minimize),
          )),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.3)),
          height: 40,
          width: 80,
          child: Center(child: Text("$x")),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.3)),
          height: 40,
          width: 40,
          child: Center(
              child: IconButton(
            onPressed: () {
              setState(() {
                if (x == 0) {
                  totalPrise = prise + dileverPrise;
                } else
                  totalPrise += prise;
                x++;
              });
            },
            icon: Icon(Icons.add),
          )),
        ),
      ],
    );
  }
}
