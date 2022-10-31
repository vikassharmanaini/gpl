import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gpl/Widgets/otherWeb.dart';
import 'package:gpl/utile/util.dart';

class MyCOllegePage extends StatefulWidget {
  const MyCOllegePage({super.key});

  @override
  State<MyCOllegePage> createState() => _MyCOllegePageState();
}

class _MyCOllegePageState extends State<MyCOllegePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.8,
              top: 5,
              bottom: 5),
          child: Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: CarouselSlider(
              items: [
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 5,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeInOutBack),
            )),
        Expanded(
          child: GridView.builder(
            itemCount: util().Mycollegepagetile.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (MediaQuery.of(context).size.width >= 450)
                  ? 3
                  : (MediaQuery.of(context).size.width >= 200)
                      ? 2
                      : 1,
            ),
            itemBuilder: (context, index) => Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.all(8),
              // width: (MediaQuery.of(context).size.width / 2) - 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFFFFFFF),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Color.fromARGB(52, 5, 5, 5),
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                  ),
                  BoxShadow(
                    color: Color(0x751B1D1C),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Otherweb(
                                        link: util()
                                            .Mycollegepagetile
                                            .elementAt(index)
                                            .url)));
                          },
                          child: Image.asset(
                              fit: BoxFit.fill,
                              filterQuality: FilterQuality.medium,
                              util().Mycollegepagetile[index].imgsrc),
                        )),
                    Text(
                      util().Mycollegepagetile[index].title,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
