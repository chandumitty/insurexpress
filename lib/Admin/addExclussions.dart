import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Admin/exclusions.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/widget/admin_sidemenu.dart';

class Addexclussions extends StatefulWidget {
  const Addexclussions({super.key});

  @override
  State<Addexclussions> createState() => _AddexclussionsState();
}

class _AddexclussionsState extends State<Addexclussions> {
  String selectedType = 'Select';
  String selectedCategory = 'Select';
  String selectedExclusionType = 'Select';
  List<String> insuranceType = [
    'Select',
    'Motor Insurance',
    'Travel Insurance',
  ];
  List<String> exclusionCategory = [
    'Select',
    'Flight',
    'Medical',
    'Passport',
    'Baggage',
    'Personal',
    'Accident',
    'Hotel',
  ];
  List<String> exclusionsTyps = [
    'Select',
    'Mandatory',
    'Optional',
    // 'Passport',
    //'Baggage',
    //'Personal',
    //'Accident',
    //'Hotel',
  ];
  // List<String> exclusionType = ['Select', 'Optional', 'Mandatory'];
  final _formkey = GlobalKey<FormState>();
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
      drawer: AdminSidemenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 7, 62, 108),
                height: 40,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Add New Exclusions',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          //width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            //vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ), // Outline color
                            borderRadius: BorderRadius.circular(
                              8,
                            ), // Optional: rounded corners
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                hintText: 'Select Insurance Type',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                              // value: selectedType,
                              style: TextStyle(color: Colors.black),

                              items: insuranceType.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedType = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            //vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ), // Outline color
                            borderRadius: BorderRadius.circular(
                              8,
                            ), // Optional: rounded corners
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                hintText: 'Select Exclusion Category',
                                //labelText: 'Exclusion Category',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                              // value: selectedCategory,
                              style: TextStyle(color: Colors.black),
                              items: exclusionCategory.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue1) {
                                setState(() {
                                  selectedCategory = newValue1!;
                                });
                              },
                            ),
                          ),
                          //),
                        ),
                      ),

                      //SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          maxLines: 5,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintText: 'Enter descriptions ',
                            labelText: 'Descriptions :',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ), // Outline color
                            borderRadius: BorderRadius.circular(
                              8,
                            ), // Optional: rounded corners
                          ),
                          //child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField(
                            //focusColor: Colors.grey,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              hintText: 'Exclusion Type',
                              //labelText: 'Exclusion Type',
                            ),
                            items: exclusionsTyps.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue2) {
                              setState(() {
                                selectedExclusionType = newValue2!;
                              });
                            },
                            //),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Exclusions(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Color.fromARGB(
                                      255,
                                      7,
                                      62,
                                      108,
                                    ),
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56),
                                    ),
                                  ),
                                  child: Text(
                                    'Cancel',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 172),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Addexclussions(),
                                      ),
                                    );

                                    //print('object');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      7,
                                      62,
                                      108,
                                    ),
                                    foregroundColor: Colors.white,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(56),
                                    ),
                                  ),
                                  child: Text(
                                    'Save',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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
