import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/model/my_color.dart';
import 'package:healthcare/view/widget/my_clipper.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, -1.03),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
              child: Image.asset(
                'images/bg_pattern.png',
                height: MediaQuery.of(context).size.height / 4,
                fit: BoxFit.fitHeight,
                width: MediaQuery.of(context).size.width,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(EvaIcons.menu, color: MyColor().color5),
                          onPressed: null),
                      Text('Dashboard',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 18, color: MyColor().color5)),
                      IconButton(
                          icon: Icon(
                            EvaIcons.bell,
                            color: MyColor().color5,
                          ),
                          onPressed: null),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.height / 2,
                  child: Card(
                    color: MyColor().color5,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'RSU Dr. Zainoel Abidin',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'Jl. Teuku Nyak Arif No. 159, Banda Aceh, Aceh, Indonesia',
                            style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.w400,
                                color: MyColor().color6),
                          ),
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text('Golongan Darah',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: MyColor().color2)),
                SizedBox(height: 16),
                Container(
                    height: 250,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: GolonganDarah()),
                SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {},
                  // splashColor: Colors.amber,
                  color: MyColor().color2,
                  elevation: 1,
                  splashColor: MyColor().color1,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    'Apply Requirement',
                    style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.w400, color: MyColor().color5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GolonganDarah extends StatefulWidget {
  @override
  _GolonganDarahState createState() => _GolonganDarahState();
}

class _GolonganDarahState extends State<GolonganDarah> {
  final List listDarah = ['A', 'B', 'AB', 'O'];

  int a = 2;
  int b = 4;
  int ab = 10;
  int o = 50;

  List listJumlah = [2, 4, 10, 50];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listDarah.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            color: MyColor().color5,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            '${listDarah[i]}',
                            style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: MyColor().color1),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jumlah yang dibutuhkan',
                            style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.w400,
                                // fontSize: 20,
                                color: MyColor().color6),
                          ),
                          Text(
                            '${listJumlah[i]} Kantong',
                            style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.w600,
                                // fontSize: 14,
                                color: MyColor().color2),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 8),
                  Flexible(
                      child: IconButton(
                          color: MyColor().color2,
                          icon: Icon(EvaIcons.minus),
                          onPressed: () {
                            setState(() {
                              listJumlah[i] -= 1;
                              print(listJumlah[i]);
                            });
                          })),
                  Flexible(
                      child: IconButton(
                          color: MyColor().color1,
                          icon: Icon(EvaIcons.plus),
                          onPressed: () {
                            setState(() {
                              listJumlah[i] += 1;
                              print(listJumlah[i]);
                            });
                          })),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
