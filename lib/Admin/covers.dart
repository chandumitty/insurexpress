import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Admin/addCovers.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/widget/admin_sidemenu.dart';

class Covers extends StatefulWidget {
  const Covers({super.key});

  @override
  State<Covers> createState() => _CoversState();
}

class _CoversState extends State<Covers> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> coversList = [
      {
        'insuranceType': 'Travel Insurance',
        'coverCategory': 'Medical',
        'descriptions': 'Medical emergency/hospitalization',
        'note': 'Covers expenses due to sickness or injury during travel',
      },
      {
        'insuranceType': 'Travel Insurance',
        'coverCategory': 'Medical',
        'descriptions': 'Emergency medical evacuation',
        'note':
            'Transport to the nearest suitable hospital when medically necessary',
      },
      {
        'insuranceType': 'Travel Insurance',
        'coverCategory': 'Family',
        'descriptions': 'Repatriation of remains',
        'note': 'Return of mortal remains to the home country after death.',
      },
      {
        'insuranceType': 'Travel Insurance',
        'coverCategory': 'Accident',
        'descriptions': 'Accidental death and dismemberment',
        'note': 'Lump sum payment for accidental death or specific injuries',
      },
      {
        'insuranceType': 'Travel Insurance',
        'coverCategory': 'Personal',
        'descriptions': 'Personal accident cover',
        'note':
            'Compensation for accidental injuries leading to disablement or death',
      },
      {
        'insuranceType': 'Travel Insurance',
        'coverCategory': 'Personal',
        'descriptions': 'Personal liability',
        'note': 'Protection against third-party claims for injury or property',
      },
      {
        'insuranceType': 'Travel Insurance',
        'coverCategory': 'Flight',
        'descriptions': 'Trip cancellation',
        'note':
            'Reimbursement of pre-paid, non-refundable travel costs for covered',
      },
    ];
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: '',
        onMenuPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
      drawer: AdminSidemenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 7, 62, 108),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Covers',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          // ),
                        ),
                        SizedBox(width: 175),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => Addcovers(),
                              ),
                            );
                          },
                          child: Text(
                            '+ Add Covers',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Addcovers()),
                  );
                },
                child: SizedBox(
                  height: 650, //double.infinity,
                  child: ListView.builder(
                    itemCount: coversList.length,
                    itemBuilder: (context, index) {
                      final cover = coversList[index];
                      return Card.outlined(
                        child: ListTile(
                          title: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Insurance Type: ',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '${cover['insuranceType']}',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Covers Category: ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${cover['coverCategory']}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Text(
                              //   'Covers Category: ${cover['coverCategory']}',
                              //   style: GoogleFonts.poppins(fontSize: 14),
                              // ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Descriptions: ',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${cover['descriptions']}',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Note: ',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${cover['note']}',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
