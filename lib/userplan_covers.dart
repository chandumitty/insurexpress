import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/choose_plan.dart';
import 'package:projects/widget/user_sidemenu.dart';

class userplan_covers extends StatefulWidget {
  const userplan_covers({super.key});

  @override
  State<userplan_covers> createState() => _userplan_coversState();
}

class _userplan_coversState extends State<userplan_covers> {
  @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     final size = context.size; // ✅ Safe now
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final List<Map<String, String>> Covers = [
      {
        'covers': 'Trip Cancellation',
        'descriptions':
            'Reimbursement of pre-paid, non-refundable travel costs for covered	',
        'amount': '500',
        'deductible': '50',
      },
      {
        'covers': 'Personal liability',
        'descriptions':
            'Protection against third-party claims for injury or property',
        'amount': '10000',
        'deductible': '200',
      },
      {
        'covers': 'Loss of passwort',
        'descriptions': 'Reimburses costs for securing a new passport abroad.',
        'amount': '250',
        'deductible': '25',
      },
      {
        'covers': 'Loss of checked-in baggage',
        'descriptions':
            'Compensation for permanently lost airline-checked luggage	',
        'amount': '200',
        'deductible': '0',
      },
      {
        'covers': 'Delay of checked-in baggage',
        'descriptions':
            'Covers cost of essentials due to delayed baggage delivery.	',
        'amount': '40',
        'deductible': '0',
      },
    ];
    final List<Map<String, String>> Exclusions = [
      {
        'exclusion': 'Travel against medical advice',
        'exclusionCategoryName': 'Flight',
      },
      {
        'exclusion':
            'Elective/cosmetic surgeries and dental treatments not due to accident',
        'exclusionCategoryName': 'Medical',
      },
      {
        'exclusion': 'Losses due to alcohol/drug abuse',
        'exclusionCategoryName': 'Personal',
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        appBar: CustomAppBar(
          title: '',
          onMenuPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        drawer: UserSidemenu(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: 350,
                    height: 150,
                    child: Image.asset("assets/Travel insurance-pana 1.png"),
                  ),
                ),
                Container(
                  width: 400,
                  color: Color.fromARGB(255, 7, 62, 108),
                  child: Column(
                    children: [
                      //SizedBox(width: 400),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'Travel Details',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Card.outlined(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Plan Id :',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'TIPLAN 20251',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Plan Name :',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Silver Plus ',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ],
                        ),

                        Divider(),
                        Row(
                          children: [
                            Text(
                              'From Date :',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '16-12-2025',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'To Date :',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '20-12-2025',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ],
                        ),

                        Divider(),
                        Row(
                          children: [
                            Text(
                              'Sum Assured :',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '100000.00',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Premium :',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '100.00',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    color: Color.fromARGB(255, 7, 62, 108),
                    child: Center(
                      child: Text(
                        'Covers',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                //Divider(),
                SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: Covers.length,
                          itemBuilder: (context, index) {
                            final cover = Covers[index];

                            return Card.outlined(
                              elevation: 3,
                              child: ListTile(
                                title: Text(
                                  'Covers:${cover['covers']}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Descriptions: ${cover['descriptions']}',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),

                                    // Text(
                                    //   'Amount: ',
                                    //   style: GoogleFonts.poppins(
                                    //     fontSize: 14,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    Text(
                                      'Amount: ${cover['amount']}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    // Text(
                                    //   'Deductible: ',
                                    //   style: GoogleFonts.poppins(
                                    //     fontSize: 14,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    Text(
                                      'Deductible: ${cover['deductible']}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    color: Color.fromARGB(255, 7, 62, 108),
                    child: Center(
                      child: Text(
                        'Exclusions',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: Exclusions.length,
                          itemBuilder: (context, index) {
                            final exclusion = Exclusions[index];

                            return Card.outlined(
                              elevation: 3,
                              child: ListTile(
                                title: Text(
                                  'Exclusion: ${exclusion['exclusion']}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Exclusion Category Name: ${exclusion['exclusionCategoryName']}',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 2,
                    bottom: 10,
                    right: 5,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => ChoosePlan(),
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
                    child: Text(
                      "Submit",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
