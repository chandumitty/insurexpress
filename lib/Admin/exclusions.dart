import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Admin/addCovers.dart';
import 'package:projects/Admin/addExclussions.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/widget/admin_sidemenu.dart';

class Exclusions extends StatefulWidget {
  const Exclusions({super.key});

  @override
  State<Exclusions> createState() => _ExclusionsState();
}

class _ExclusionsState extends State<Exclusions> {
  final List<Map<String, String>> exclusionssList = [
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
  @override
  Widget build(BuildContext context) {
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
                          'Exclusions',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          // ),
                        ),
                        SizedBox(width: 100),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => Addexclussions(),
                              ),
                            );
                          },
                          child: Text(
                            '+ Add Exclusions',
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
                    itemCount: exclusionssList.length,
                    itemBuilder: (context, index) {
                      final exclusion = exclusionssList[index];
                      return Card.outlined(
                        child: ListTile(
                          title: Text(
                            'Insurance Type: ${exclusion['insuranceType']}',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Covers Category: ${exclusion['coverCategory']}',
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                              Text(
                                'Descriptions: ${exclusion['descriptions']}',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),

                              Text(
                                'Note: ${exclusion['note']}',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
