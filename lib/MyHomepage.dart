//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:projects/AppBar/app_bar.dart';
//import 'package:footer/footer.dart';
//import 'package:footer/footer_view.dart';
//import 'package:projects/footer/footer.dart';
import 'package:projects/term_conditions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/widget/user_sidemenu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: '',
        onMenuPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),

      drawer: UserSidemenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 7, 62, 108),

                  borderRadius: BorderRadius.circular(15.0),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: 150,
                                child: Text(
                                  'Sun Insurance brings you the bestInsurance solutions for your needs from multiple Insurance providers... Select your product here... ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // SizedBox(height: 5),
                            ],
                          ),
                          //SizedBox(width: 20),
                          Image.asset(
                            'assets/landingpage2.png',
                            width: 178,
                            // height: 100,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Sun Insurance brings you next generation digital insurance products  in Travel, Health, Medical , Life and General insurance sectors from a wide variety of insurance providers at competitive rates...  Select your choice below',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          // wordSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Powered by leading Insurance aggregation platform , InsureXpress,Sun KPO join hands to empower Customers with Comprehensive Insurance Solutions on the go. It integrates with leading insurance providers and brings you the best possible price and features.  ',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          // wordSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Insurance Products offered at Discount for InsureXpress employees',
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 7, 62, 108),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8),
                child: Card.outlined(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        //SizedBox(width: 350, height: 20),
                        Image.asset('assets/Layer_1.png', width: 50),
                        Column(children: [SizedBox(width: 10)]),
                        Text(
                          'Travel Insurance',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 7, 62, 108),
                          ),
                        ),
                        Text(
                          'Travel with confidence knowing  youre  covered for unexpected events wherever you go',
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const TermConditions(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 62, 108),
                            foregroundColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56),
                            ),
                          ),

                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(children: [SizedBox(height: 5)]),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Card.outlined(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        // SizedBox(width: 350, height: 20),
                        Image.asset('assets/motorInsurance.png', width: 50),
                        Column(children: [SizedBox(width: 10)]),
                        Text(
                          'Motor Insurance',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 7, 62, 108),
                          ),
                        ),
                        Text(
                          'Comprehensive motor insurance that protects you and your vehicle, ensuring peace of mind on every journey',
                          style: GoogleFonts.poppins(fontSize: 15),
                        ),
                        SizedBox(height: 10),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => const TermConditions(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 62, 108),
                            foregroundColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56),
                            ),
                          ),

                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(children: [SizedBox(height: 5)]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //bottomSheet: footer(),
    );

    //footer();
  }
}
